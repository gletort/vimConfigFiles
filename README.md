# vimSyntaxFiles
Syntax highlight files for Vim for non standard languages: MaBoSS (configuration file `.cfg` and node files `.bnd`), Cytosim (configuration file `.cym`, template configuration file `.cym.tpl`, properties file `.cmo`).

To use, copy the files of the language in the local folders of vim (usually `~/.vim`). The file definning the syntax highlighting must be placed in the folder `~/.vim/syntax/` (might be necessary to create it). The file definning the file type detection must be  placed in the folder `~/.vim/ftdetect/` and have the same name as the syntax file. 

You might have to add 
~~~
set foldmethod=syntax
set syntax=on
~~~
in your file `~/.vimrc` if it is not already configured 
