from rxnorm_client import exact_match, approximate_match

tests = [
    "TYLENOL",
    "LASIX",
    "LIPITOR",
    "CRESTOR",
    "TRULICITY",
    "ASPIRIN",
    "FUROSEMIDE"
]

for drug in tests:

    print("=" * 60)
    print(drug)

    result = exact_match(drug)

    if result is None:
        result = approximate_match(drug)

    print(result)
