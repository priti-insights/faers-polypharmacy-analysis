import re

# ----------------------------
# Dosage forms
# ----------------------------

DOSAGE_FORMS = {
    "TABLET", "TABLETS", "TAB", "TABS",
    "CAPSULE", "CAPSULES", "CAP", "CAPS",
    "INJECTION", "INJECTABLE", "INJ",
    "SYRUP", "SUSPENSION", "SOLUTION",
    "CREAM", "OINTMENT", "SPRAY",
    "PATCH", "DROPS", "LOTION",
    "ORAL", "TOPICAL", "AEROSOL",
    "POWDER", "GEL",
    "NEBULIZER", "NEB",
    "PUFF", "PUFFS",
    "VIAL", "VIALS"
}

# ----------------------------
# Ignore these if found inside brackets
# ----------------------------

IGNORE_BRACKET_WORDS = {
    "POLAND",
    "GENERIC",
    "PAP",
    "ALIUD",
    "VERO",
    "USA",
    "UK",
    "GERMANY",
    "FRANCE",
    "ITALY",
    "SPAIN",
    "JAPAN",
    "CHINA",
    "KOREA"
}

# ----------------------------
# Manufacturer names
# ----------------------------

MANUFACTURERS = {
    "MYLAN",
    "TEVA",
    "SANDOZ",
    "AUROBINDO",
    "ACCORD",
    "STADA",
    "ACTAVIS",
    "NOVARTIS",
    "PFIZER",
    "CIPLA",
    "SUN",
    "LUPIN",
    "TORRENT",
    "GLENMARK",
    "APOTEX",
    "HEXAL",
    "KRKA",
    "ZENTIVA",
    "RATIOPHARM",
    "ALIUD",
    "GH",
    "EG",
    "MY",
    "AL"
}


# ===================================================
# Basic normalization
# ===================================================

def normalize(text):

    if text is None:
        return ""

    s = str(text).upper().strip()

    # Remove GLOBALC prefixes
    s = re.sub(
        r'^[0-9]+\s*\(GLOBALC.*?\):\s*',
        '',
        s
    )

    # Remove repeated spaces
    s = re.sub(r'\s+', ' ', s)

    return s.strip()


# ===================================================
# Candidate generation
# ===================================================

def extract_candidates(text):

    text = normalize(text)

    candidates = []

    # Candidate 1 = original cleaned text
    candidates.append(text)

    # -----------------------------------
    # Extract names inside brackets
    # -----------------------------------

    brackets = re.findall(r'[\(\[](.+?)[\)\]]', text)

    for item in brackets:

        item = item.strip()

        if len(item) <= 3:
            continue

        if item.upper() in IGNORE_BRACKET_WORDS:
            continue

        parts = re.split(r'[,;/]', item)

        for p in parts:

            p = p.strip()

            if len(p) > 2:
                candidates.append(p)

    # -----------------------------------
    # Remove bracket contents
    # -----------------------------------

    cleaned = re.sub(
        r'[\(\[].*?[\)\]]',
        '',
        text
    )

    # -----------------------------------
    # Remove dosage forms
    # -----------------------------------

    for form in DOSAGE_FORMS:

        cleaned = re.sub(
            rf'\b{re.escape(form)}\b',
            '',
            cleaned
        )

    # -----------------------------------
    # Remove strengths
    # -----------------------------------

    cleaned = re.sub(
        r'\b\d+(\.\d+)?\s*%?',
        '',
        cleaned
    )

    cleaned = re.sub(
        r'\b(MG|MCG|G|ML|IU|MEQ|UNIT|UNITS)\b',
        '',
        cleaned
    )

    # -----------------------------------
    # Remove punctuation
    # -----------------------------------

    cleaned = re.sub(
        r'[\[\]\(\),]',
        ' ',
        cleaned
    )

    cleaned = re.sub(
        r'\s+',
        ' ',
        cleaned
    ).strip()

    if cleaned:
        candidates.append(cleaned)

    # -----------------------------------
    # Remove manufacturer names
    # -----------------------------------

    manufacturer_removed = cleaned

    for m in MANUFACTURERS:

        manufacturer_removed = re.sub(
            rf'\b{re.escape(m)}\b',
            '',
            manufacturer_removed
        )

    manufacturer_removed = re.sub(
        r'\s+',
        ' ',
        manufacturer_removed
    ).strip()

    if manufacturer_removed:
        candidates.append(manufacturer_removed)

    # -----------------------------------
    # Remove duplicates while preserving order
    # -----------------------------------

    final_candidates = []

    seen = set()

    for c in candidates:

        c = c.strip()

        if len(c) == 0:
            continue

        if c not in seen:
            seen.add(c)
            final_candidates.append(c)

    return final_candidates
