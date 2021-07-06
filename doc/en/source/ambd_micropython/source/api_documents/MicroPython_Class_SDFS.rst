class sdfs – SD File System
================================

**Constructors**

**sdfs**

Create a sdfs object and configure it to the given mode. This then
allows you to navigate through the SD card and read/write files as you
see.

**Methods**

**sdfs.listdir()**

This method listing the files and folders under current path.

**sdfs.mkdir("folder name[required]")**

This method attempts to create a folder under current path.

**sdfs.chdir("folder name[required]")**

This method change directory to a folder.

**sdfs.pwd()**

This method is to print out present working directory (current path).

**sdfs.chdir("/")**

This method is to change directory path to root directory.

**sdfs.rm("folder name[required]")**

This method is to delete a folder.

**sdfs.create("file name[required]")**

This method is to create a file.

**sdfs.write("file name[required]")**

This method is to write a string to a file.

**sdfs.read("file name[required]")**

This method is to read the content from a file.

**sdfs.rm("file name[required]")**

This method is to delete the file.
