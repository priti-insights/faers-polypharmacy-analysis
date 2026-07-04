import csv
import os
import time

from normalizer import extract_candidates
from rxnorm_client import exact_match, approximate_match

INPUT_FILE = "/faers_data/unique_drugs_clean.csv"
OUTPUT_FILE = "/faers_data/drug_mapping.csv"

# -------------------------------
# Resume support
# -------------------------------

processed = set()

if os.path.exists(OUTPUT_FILE):

    with open(OUTPUT_FILE, newline="", encoding="utf-8") as f:

        reader = csv.DictReader(f)

        for row in reader:
            processed.add(row["original_term"])

write_header = not os.path.exists(OUTPUT_FILE)

# -------------------------------
# Read input
# -------------------------------

with open(INPUT_FILE, newline="", encoding="utf-8") as f:

    reader = csv.DictReader(f)

    rows = list(reader)

total = len(rows)

# -------------------------------
# Statistics
# -------------------------------

mapped = 0
unmapped = 0

exact_count = 0
approx_count = 0

cache = {}

start = time.time()

# -------------------------------
# Open output
# -------------------------------

outfile = open(
    OUTPUT_FILE,
    "a",
    newline="",
    encoding="utf-8"
)

writer = csv.writer(outfile)

if write_header:

    writer.writerow([
        "original_term",
        "searched_term",
        "rxcui",
        "ingredient",
        "brand_name",
        "method",
        "status"
    ])

# -------------------------------
# Mapping loop
# -------------------------------

for i, row in enumerate(rows, start=1):

    original = (
        row.get("cleaned_term")
        or row.get("drug_term")
        or ""
    ).strip()

    if not original:
        continue

    if original in processed:
        continue

    result = None
    matched_candidate = ""

    candidates = extract_candidates(original)

    for candidate in candidates:

        candidate = candidate.strip()

        if not candidate:
            continue

        if candidate in cache:

            result = cache[candidate]

        else:

            try:

                result = exact_match(candidate)

                if result is None:
                    result = approximate_match(candidate)

            except Exception:

                result = None

            cache[candidate] = result

        time.sleep(0.05)

        if result:

            matched_candidate = candidate
            break

    if result:

        mapped += 1

        if result["method"] == "EXACT":
            exact_count += 1
        else:
            approx_count += 1

        writer.writerow([
            original,
            matched_candidate,
            result["rxcui"],
            result["ingredient"],
            result["brand_name"],
            result["method"],
            "MAPPED"
        ])

    else:

        unmapped += 1

        writer.writerow([
            original,
            matched_candidate,
            "",
            "",
            "",
            "",
            "UNMAPPED"
        ])

    outfile.flush()

    if i % 100 == 0:

        elapsed = (time.time() - start) / 60

        percent = (i / total) * 100

        print(
            f"{i}/{total} ({percent:.2f}%) | "
            f"Mapped:{mapped} | "
            f"Unmapped:{unmapped} | "
            f"Exact:{exact_count} | "
            f"Approx:{approx_count} | "
            f"{elapsed:.1f} min"
        )

outfile.close()

elapsed = (time.time() - start) / 60

print("\n===================================")
print("Finished")
print("===================================")

print(f"Total Terms : {total}")
print(f"Mapped      : {mapped}")
print(f"Unmapped    : {unmapped}")
print(f"Exact       : {exact_count}")
print(f"Approx      : {approx_count}")
print(f"Elapsed     : {elapsed:.2f} minutes")
