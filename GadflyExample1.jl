load("RDatasets")
using RDatasets

load("Gadfly")
using Gadfly

load("Compose")
using Compose

# Load some arbitrary data.
iris = data("datasets", "iris")

# Construct a plot definition.
p = plot(iris, {:x => "Sepal.Length", :y => "Sepal.Width", :color => "Species"},
         Geom.point)

# Render that plot, a definition definition of the graphic.
g = render(p)

# Draw the graphic as an SVG image.
img = SVG("some_plot.svg", 6inch, 4inch)
draw(img, g)
finish(img)
