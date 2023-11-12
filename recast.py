import pandas as pd

# Import raw data; rename columns.
data = pd.read_excel("data/raw.xlsx", "Data_Points")
data = data[["Unnamed: 0", "Diam", "X", "Y", "Z"]]
data = data.rename({"Unnamed: 0": "location", "Diam": "diameter", "X": "x", "Y": "y", "Z": "z"}, axis=1)

# Normalize?
data.to_csv("data/point-clouds.csv", index=False)
