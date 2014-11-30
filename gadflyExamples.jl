% From the Julia REPL a reasonably up to data version can be installed with

Pkg.add("Gadfly")
% This will likely result in half a dozen or so other packages also being installed.

% Gadfly is then loaded with.

using Gadfly

{.julia hide="true") srand(12345)

# E.g.
plot(x=rand(10), y=rand(10))

# E.g.
plot(x=rand(10), y=rand(10), Geom.point, Geom.line)

# E.g.
plot(x=1:10, y=2.^rand(10),
     Scale.y_sqrt, Geom.point, Geom.smooth,
     Guide.xlabel("Stimulus"), Guide.ylabel("Response"), Guide.title("Dog Training"))


using RDatasets
# E.g.
plot(data("datasets", "iris"), x="Sepal.Length", y="Sepal.Width", Geom.point)
