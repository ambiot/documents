#####
SDFS
#####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API Documents**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Constructors**
:raw-html:`</p>`

| **SDFS()**
| Create a ``sdfs`` object and configure it to the given mode. This then allows you to navigate through the SD card and read/write files as you see.

.. note::   
    No parameter is required


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Methods**
:raw-html:`</p>`

| **sdfs.listdir()**
| This method listing the files and folders under current path.

| **sdfs.mkdir(**\ *"folder name"*\ [required] **)**
| This method attempts to create a folder under current path.

- **folder name**: the name of the new folder/directory you wish to create, it must be a string less than 128 characters

| **sdfs.chdir(**\ *"folder name"*\ [required] **)**
| This method change directory to the one given in the parameter.

- **folder name**: the name of the folder/directory you wish to navigate to, it must be a string less than 128 characters

.. note::   
    Key in “/” as the parameter to this API would navigate back to the root directory.

| **sdfs.pwd()**
| This method is to print out present working directory (current path).

| **sdfs.rm(**\ *"folder name or file name*\ [required]" **)**
| This method is to delete a file or a folder. Note that, the folder to be deleted has to be empty before it can be deleted successfully.

- **folder name or file name**: the name of the folder or file you wish to delete, it must be a string less than 128 characters

| **sdfs.create(** \ *"file name*\ [required]" **)**
| This method is to create a file.

- **file name**: The name of the file you wish to create.

| **sdfs.write(**\ *"file name*\ [required]" , \ *"string*\ [required]"**)**
| This method is to write your input as a string to a file specified.

- **file name**: The name of the file you wish to read.
- **string**: The data you wish to write.
  
| **sdfs.read(**\ *"file name*\ [required]"**)**
| This method is to read the content from a file.

- **file name**: The name of the file you wish to read.
