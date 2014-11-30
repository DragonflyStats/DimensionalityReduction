#### Installing on Windows systems

- Download the julia Windows binary from this link.
- Open up the resulting archive and double-click on "julia." (This is a batch script named julia.bat.)

- When prompted by popup windows, click "Extract All" and then "Extract."

- Enter the extracted directory (julia-d8a5dc1753) and again double-click on "julia" (again, the julia.bat script).

- This should bring up the `julia>` prompt.

- At the julia prompt, type
<pre><code>
       julia> Pkg.add("Winston")
</code></pre>       
- You will be prompted to enter your name and password.

- You will be prompted twice with a question whose possible responses are skip, binary, source. Enter binary.

- This will proceed to do various things for a while (massive quantities of text will scroll over your screen).

- When it finishes, you will be returned to the julia> prompt. Type

<pre><code>
       julia> using Winston;
       julia> plot([1:10],[1:10]);
</code></pre>      
- This should create a plot of a line.
