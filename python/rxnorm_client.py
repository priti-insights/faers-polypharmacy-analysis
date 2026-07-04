import requests

BASE_URL = "https://rxnav.nlm.nih.gov/REST"

session = requests.Session()


def get_properties(rxcui):
    """
    Return the preferred RxNorm name for a concept.
    """

    try:

        url = f"{BASE_URL}/rxcui/{rxcui}/properties.json"

        r = session.get(url, timeout=30)
        r.raise_for_status()

        data = r.json()

        if "properties" in data:
            return data["properties"]["name"]

    except Exception:
        pass

    return None


def get_ingredient(rxcui):
    """
    Return the active ingredient if available.
    Otherwise return the preferred RxNorm name.
    """

    try:

        url = f"{BASE_URL}/rxcui/{rxcui}/allrelated.json"

        r = session.get(url, timeout=30)
        r.raise_for_status()

        data = r.json()

        groups = data.get("allRelatedGroup", {}).get("conceptGroup", [])

        preferred = {"IN", "MIN", "PIN"}

        for group in groups:

            tty = group.get("tty")

            if tty not in preferred:
                continue

            concepts = group.get("conceptProperties", [])

            if concepts:
                return concepts[0]["name"]

    except Exception:
        pass

    return get_properties(rxcui)


def exact_match(term):
    """
    Exact RxNorm lookup.
    """

    try:

        url = f"{BASE_URL}/rxcui.json"

        r = session.get(
            url,
            params={"name": term},
            timeout=30
        )

        r.raise_for_status()

        ids = r.json().get("idGroup", {}).get("rxnormId", [])

        if not ids:
            return None

        rxcui = ids[0]

        return {
            "rxcui": rxcui,
            "brand_name": get_properties(rxcui),
            "ingredient": get_ingredient(rxcui),
            "method": "EXACT"
        }

    except Exception:

        return None


def approximate_match(term):
    """
    Approximate RxNorm lookup.
    """

    try:

        url = f"{BASE_URL}/approximateTerm.json"

        r = session.get(
            url,
            params={
                "term": term,
                "maxEntries": 1
            },
            timeout=30
        )

        r.raise_for_status()

        candidates = (
            r.json()
             .get("approximateGroup", {})
             .get("candidate", [])
        )

        if not candidates:
            return None

        rxcui = candidates[0]["rxcui"]

        return {
            "rxcui": rxcui,
            "brand_name": get_properties(rxcui),
            "ingredient": get_ingredient(rxcui),
            "method": "APPROX"
        }

    except Exception:

        return None
