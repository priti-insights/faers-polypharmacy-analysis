from normalizer import extract_candidates

examples = [

    "APRESOLINE (HYDRALAZINE)",

    "OMEPRAZOLE (PRILOSEC OTC) 20 MG",

    "81 MG ASPIRIN",

    "1324567 (GLOBALC3SEP21): FAMOTIDINE",

    "MADOPAR (LEVODOPA, BENSERAZIDE)",

    "BISEPTOL (POLAND)",

    "0.9 % SODIUM CHLORIDE",

    "TYLENOL (PARACETAMOL)"
]

for e in examples:

    print("\n", e)

    print(extract_candidates(e))
