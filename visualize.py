
import pandas as pd
import matplotlib.pyplot as plt

# Read in points and transform them to records.
clouds = pd.read_csv("data/point-clouds.csv")
points = clouds.to_records(index=False)

# Figure setup.
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# Type-to-color mapping.
colors = dict(
    T="#E52B50",
    L="#9966CC",
    R="#8DB600"
)

# Set point cloud color based on location; scatter points with scaled diameter.
clouds["color"] = clouds["location"].map(colors)
ax.scatter(clouds["x"], clouds["y"], clouds["z"], c=clouds["color"], s=clouds["diameter"]*40)

# Force the aspect ratio to be equal; show the plot.
ax.set_aspect("equal")
plt.show()
