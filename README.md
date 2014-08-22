# prettyplots #


### What is this repository for? ###

Increases font sizes, line and marker weights of plots for printing or presentations. Acts on all open plots. All fonts are affected, including axes, labels, and legends.


### Getting Started ###
You can download the files in one of two ways:

* using `git clone git://github.com/keelanc/prettyplots.git`
* using the **Download** button to get the ZIP file and extracting the files to
  a folder

Once the files are on your PC, add the folder `prettyplots` to your Matlab 
path or **copy** the file file `prettyplots.m` it to your working folder.


### Usage

The `prettyplots.m` script can be run from the Matlab command window. The file must be in current working directory or in another directory that is in your path. The syntax is `prettyplots(fsize,lsize,msize)` where the parameters are font size, line weight, and marker size, respectively. Default values are used if any parameters are left undeclared.

Examples:

    >> prettyplots(10,4,20)
    >> prettyplots(10,4)
    >> prettyplots(10)
    >> prettyplots % default values are [8,2,16]


### Useful References ###

* [Organization of Graphics Objects](http://www.mathworks.com/help/matlab/creating_plots/organization-of-graphics-objects.html)
* [Object Properties](http://www.mathworks.com/help/matlab/creating_plots/object-properties.html)
* [Searching for Objects by Property Values — findobj](http://www.mathworks.com/help/matlab/creating_plots/accessing-object-handles.html#f7-18979)


### License ###

TBD