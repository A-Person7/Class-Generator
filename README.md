<H1>Class Generator </H1>

<p>This program is intended to reduce the amount of boiler plate code written when creating a new c++ class and header. It is also intended to simplify the process of creating header guards to reduce boiler plate as well as to reduce the likelyhood of accidentally re-using header guard definitions/forgetting to add them.</p>

<H3>Usage </H3>

To use this script, call cg from the terminal of your choice and add the class name. For example, to create the class Bar, you can use the following:

```bash cg Bar```

To add a class within a namespace, write the namespace before the class. The following example creates the class Bar in the namespace Foo.

```bash cg Foo::Bar```

Note that this defaults to creating the class Bar inside of a folder named Foo for project organization. If no such folder exists, this script will create one.


A future update is intended to support being able to change the directory the file is stored in. While options for changing the header file extensions, namespace, directory saved, and more exist, they do not seem to work reliably right now.

<H3>Installation</H3>

In Linux, you can run ```bash make install`` with super user permissions to copy the script into your path (in /usr/bin). 

Alternatively, you can run ```bash cp cg -d [your path here]``` or use a file explorer to save the script somewhere else, like ~/bin. This program should be able to run on all operating systems, although you might need to preface this any calls to this script with ```bash sh``` on non-unix systems that do not respect hashbangs. Adding the cg file to your path is recommended for convenience, but is not required.

<H5>Additional notes: </H5>

This program will overrite files with the same name as the file it is attempting to create. This behavior will likely have a flag attached to it eventually or the script might be changed to ask for permission before deleting the file. This behavior can be changed in the script itself by changing the final lines calling printf on the text and using > to create/overwrite a file with >> instead to append the text to the end of the file, making it much easier to realize if any files are accidentally overwritten.
