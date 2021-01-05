[![Build Status](https://github.com/wpoely86/PhD-template/workflows/Build%20PhD%20template%20pdf/badge.svg)](https://github.com/wpoely86/PhD-template/actions)

LaTeX PhD template
==================

This is template to write a PhD dissertation in LaTeX. A dissertation made with
this template can be found [here](http://lib.ugent.be/catalog/pug01:6933577).
A compiled version of the template can be downloaded [here](https://wpoely86.github.io/PhD-template/main.pdf).

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
