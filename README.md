# vimSyntaxFiles
Syntax highlight files for Vim for non standard languages: MaBoSS (configuration file `.cfg` and node files `.bnd`), Cytosim (configuration file `.cym`, template configuration file `.cym.tpl`, properties file `.cmo`).
With vimrc file and customized color schemes.

To use, copy the files of the language in the local folders of vim (usually `~/.vim`). The file definning the syntax highlighting must be placed in the folder `~/.vim/syntax/` (might be necessary to create it). The file definning the file type detection must be  placed in the folder `~/.vim/ftdetect/` and have the same name as the syntax file. 
The `.vimrc` file should be place in the home directory, and the color scheme file in the `~/.vim/colors` directory.

You might have to add 
~~~
set foldmethod=syntax
set syntax=on
~~~
in your file `~/.vimrc` if it is not already configured 

## Vim color schemes

In `colors` folder, color schemes for vi are available. 

Itsasoa color scheme is for black background, with blue tones.
Below is a snapshot of this color scheme on a `c++` file:

![itsasoa color scheme](./colors/cplusplusColor.png?raw=true "Color scheme itsasoa snapshot") 

Hegoak color scheme is for black background, with green and red tones.
Below is a snapshot of this color scheme on a `c++` file:

![hegoak color scheme](./colors/colorHegoak.png?raw=true "Color scheme hegoak snapshot") 
