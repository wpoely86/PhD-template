LaTeX PhD template
==================

This is template to write a PhD dissertation in LaTeX. A dissertation made with
this template can be found [here](http://lib.ugent.be/catalog/pug01:6933577).

The 'main' LaTeX file is `main.tex`. To compile it, use `latexmk`:
```
latexmk -pdf main.tex
```
The repository has a custom `.latexmkrc` to also generate the glossary.

Under the directory `figures/BH/` you can also find a small bash script to 
graphs with gnuplot.

License
-------
All of this is licensed under the MIT license.
