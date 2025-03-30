# TeX Stack (Y3 Edition Extra-Caramelised Nuclear Beegaleegaloo Part II)

(~fork of Y2 Edition, which was the y2supos repo).

P.S. I am very thankful for my earlier self for creating the y2supos repo. Because I switched computer, the folder with all my supos is on my old harddrive. This saves me the effort of having to get the enclosure and copy the stuff over.

This is a description of my TeX workflow to save and submit supervision work.

All the supervision-related files are saved in this repository, with the structure
```
this_directory (supo_submissions)
|-- topic_name
    |-- supo1
        | -- supo1.tex
        | -- supo1.pdf
```

Now, there are several helper scripts. ```clean.sh``` removes auxillary files from the directory. ```save.sh``` runs clean and then pushes to github. ```hardsave.sh``` runs clean without the warning that lists the files to be deleted.

Within each file, I have a toggle that configures whether to compile the TeX with the infofile from Kudos or to use a blank template-less document (Which is necessary if you want to do Supo work pre-booking so the infofile is not available). The templates plus my custom templates are placed in a template folder in the same directory as supo1, supo2.

### TeXStudio Configuration
I use TeXStudio. A custom keyboard shortcut Ctrl-Shift-S that runs the script ```./hardsave.sh``` which backs up my supervision work.

This is done via Options > Configure TeXStudio. Under ```Build``` tab, I create a new user command which has the raw string of the path of hardsave.

Then, under ```Shortcuts```, I look for the user command under ```Tools -> User``` and set the keyboard shortcut.

I installed all the packages (too many, to be fair) using the Package install list below. 

I set the compile command to the command below.

# Commands

Save your work!
```./save.sh```

Compile command
```latexmk -c -pdf -silent -synctex=1 %```

Package install list
```sudo apt install texlive-full```

Remove unnessary files
```./clean.sh```
