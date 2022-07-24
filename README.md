<H1>Class Generator </H1>

<p>This program is intended to reduce the amount of boiler plate code written when creating a new c++ class and header. It is also intended to simplify the process of creating header guards to reduce boiler plate as well as to reduce the likelyhood of accidentally re-using header guard definitions/forgetting to add them.</p>


<H3>Usage </H3>

To use this script, call cg from the terminal of your choice and add the class name.  For example, to create the class Bar, you can use the following:

```cg Bar```

To add a class within a namespace, write the namespace before the class. The following example creates the class Bar in the namespace Foo.

```cg Foo::Bar```

Note that this defaults to creating the class Bar inside of a folder named Foo for project organization. If no such folder exists, this script will create one.

On non-unix systems and/or systems that don't respect the hashbang or don't have bash installed in /bin, it might be necessary to preface running the script with ```sh```.


A future update is intended to support being able to change the directory the file is stored in. While options for changing the header file extensions, namespace, directory saved, and more exist, they do not seem to work reliably right now.


<H3>Installation</H3>

As a self contained bash script, installation is not required. However, adding the script to your path is recommended for the sake of convenience.

In Linux, you can run ```make install`` with super user permissions to copy the script into your path (in /usr/bin). 

Alternatively, you can run ```cp cg -d [your path here]``` or use a file explorer to save the script somewhere else, like ~/bin.

To uninstall this program, run ```make uninstall``` with super user permissions if the script was installed with make. If the program was installed elsewhere, remove the script from there. The script is the only file saved anywhere, so deleting it is all that is necessary to remove the program. 

<H4>Additional notes: </H4>

This program will overrite files with the same name as the file it is attempting to create. This behavior will likely have a flag attached to it eventually or the script might be changed to ask for permission before deleting the file. This behavior can be changed in the script itself by changing the final lines calling printf on the text and using > to create/overwrite a file with >> instead to append the text to the end of the file, making it much easier to realize if any files are accidentally overwritten.
