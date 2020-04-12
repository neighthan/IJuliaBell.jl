# IJuliaBell

This adds the `@bell` macro which can be used in Jupyter notebooks to play a .wav file once a command completes. This is a Julia port of [ipy_cell_completion_bell].


## Installation

```julia
using Pkg
Pkg.add("IJuliaBell")
```

## Usage

```julia
using IJuliaBell

@bell sleep(3)
```

## Custom .wav file

The package includes a .wav from [Free Wave Samples] (slightly shortened to reduce file size), but you can replace the installed `bell.wav` file with another to use it instead (the file must be named `bell.wav`, though, and be in the same directory, unless you change the source code of the package).

[ipy_cell_completion_bell]: https://github.com/neighthan/jupyter-utils/blob/master/jupyter_utils/ipy_cell_completion_bell.py
[Free Wave Samples]: https://freewavesamples.com/files/E-Mu-Proteus-FX-CosmoBel-C3.wav
