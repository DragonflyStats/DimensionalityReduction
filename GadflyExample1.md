GadFly Example 1
====================
The `plot` function in Gadfly is of the form:
<pre><code>
plot(data::DataFrame, mapping::Dict, elements::Element...)
</code></pre>
- The first argument is the data to be plotted, 
- the second is a dictionary mapping "aesthetics" to columns in the data frame, 
- this is followed by some number of elements, which are the nouns and verbs, so to speak, that form the grammar.

<pre><code>
p = plot(iris, {:x => "Sepal.Length", :y => "Sepal.Width"}, Geom.point)
</code></pre>
This produces a `Plot` object. 
We can turn it into a graphic by calling render on it, and this can then in turn be drawn on one or more backends.

<pre><code>
g = render(p)
img = SVG("iris_plot.svg", 6inch, 4inch)
draw(img, g)
finish(img)
</code></pre>
