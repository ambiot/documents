Class SdFatFs
==================

**Description**


Defines a class of SD FAT File system.

**Syntax**


class SdFatFs

**Members**


**Public Constructors**

SdFatFs::SdFatFs Constructs a SdFatFs object

SdFatFs::~SdFatFs Destructs a SdFatFs object

**Public Methods**

+-------------------------+-------------------------------------------+
| SdFatFs::begin          | Initialize SD FAT File System             |
+=========================+===========================================+
| SdFatFs::end            | Deinitialize SD FAT File System           |
+-------------------------+-------------------------------------------+
| SdFatFs::*getRootPath   | Get the root path of the SD FAT File      |
|                         | System                                    |
+-------------------------+-------------------------------------------+
| SdFatFs::readDir        | List items under a specific folder        |
+-------------------------+-------------------------------------------+
| SdFatFs::mkdir          | Create folder                             |
+-------------------------+-------------------------------------------+
| SdFatFs::rm             | Remove folder or file                     |
+-------------------------+-------------------------------------------+
| SdFatFs::isDir          | Check if a specific path is a directory   |
+-------------------------+-------------------------------------------+
| SdFatFs::isFile         | Check if a specific path is a file        |
+-------------------------+-------------------------------------------+
| SdFatFs::getLastModTime | Get the last modified time for a file or  |
|                         | directory                                 |
+-------------------------+-------------------------------------------+
| SdFatFs::setLastModTime | Set the last modified time for a file or  |
|                         | directory                                 |
+-------------------------+-------------------------------------------+
| SdFatFs::status         | Return the current status of SD           |
+-------------------------+-------------------------------------------+
| SdFatFs::open           | Open a file                               |
+-------------------------+-------------------------------------------+




**SdFatFs::begin**

| **Description**
| Initialize SD FAT File System.

| **Syntax**
| int SdFatFs::begin(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Returns “0” if success, else returns a negative value.

| **Example Code**
| Example: create_folder; file_read_write; get_file_attribute;
  last_modified_time; list_root_files.

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::end**

| **Description**
| De-initialize SD FAT File System.

| **Syntax**
| int SdFatFs::end(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Returns “0” if success, else returns a negative value.

| **Example Code**
| Example: create_folder; file_read_write; get_file_attribute;
  last_modified_time; list_root_files.

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::*getRootPath**

| **Description**
| Get the root path of the SD FAT File System. The logical volume
  character is starting from ‘0’, so the root path would like “0:/”.

| **Syntax**
| char \*SdFatFs::getRootPath(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the root path.

| **Example Code**
| Example: create_folder; file_read_write; get_file_attribute;
  last_modified_time; list_root_files.

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::readDir**

| **Description**
| List items under a specific folder. List items under a specific folder
  and store the result in the buffer that user specified. Each item is
  separated by ‘\0’.

| **Syntax**
| int SdFatFs::readDir(char \*path, char \*result_buf, unsigned int
  bufsize);

| **Parameters**
| path: The absolute directory path to be listed.
| result_buf: The buffer to be stored results.
| bufsize: The size of result_buf. If results exceed this size, then the
  results larger than this size would be discarded.

| **Returns**
| Returns “0” if success, else returns a negative value.

| **Example Code**
| Example: get_file_attribute; list_root_files

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::mkdir**

| **Description**
| Create folder.

| **Syntax**
| int SdFatFs::mkdir(char \*absolute_path);

| **Parameters**
| absolute_path: The absolute directory path to be created

| **Returns**
| Returns “0” if success, else returns a negative value.

| **Example Code**
| Example: create_folder

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::rm**

| **Description**
| Remove folder or file.

| **Syntax**
| int SdFatFs::rm(char \*absolute_path);

| **Parameters**
| absolute_path: The absolute directory or file path to be deleted

| **Returns**
| Returns “0” if success, else returns a negative value.

| **Example Code**
| NA

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::isDir**

| **Description**
| Check if a specific path is a directory.

| **Syntax**
| unsigned char SdFatFs::isDir(char \*absolute_path);

| **Parameters**
| absolute_path: The absolute path to be queried

| **Returns**
| The function returns “1” if it is a directory, else returns “0”.

| **Example Code**
| Example: get_file_attribute

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::isFile**

| **Description**
| Check if a specific path is a file.

| **Syntax**
| unsigned char SdFatFs::isFile(char \*absolute_path);

| **Parameters**
| absolute_path: The absolute path to be queried

| **Returns**
| The function returns “1” if it is a directory, else returns “0”.

| **Example Code**
| Example: get_file_attribute

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::getLastModTime**

| **Description**
| Get the last modified time for a file or directory.

| **Syntax**
| int SdFatFs::getLastModTime(char \*absolute_path, uint16_t \*year,
  uint16_t \*month, uint16_t \*date, uint16_t \*hour, uint16_t \*minute,
  uint16_t \*second);

| **Parameters**
| absolute_path: The absolute path to be queried.
| year: The value of the year.
| month: The value of the month.
| date: The value of the date.
| hour: The value of an hour.
| minute: The value of a minute.
| second: field “second” contains no valid information in the current
  version.

| **Returns**
| The function returns “0” if success, otherwise returns a negative
  value for failure.

| **Example Code**
| Example: last_modified_time

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::setLastModTime**

| **Description**
| Set the last modified time for a file or directory. Ameba doesn’t have
  built-in RTC. So we manually change file/directory last modified time.

| **Syntax**
| int SdFatFs::setLastModTime(char \*absolute_path, uint16_t year,
  uint16_t month, uint16_t date, uint16_t hour, uint16_t minute,
  uint16_t second);

| **Parameters**
| absolute_path: The absolute path to be queried.
| year: The value of the year.
| month: The value of the month.
| date: The value of the date.
| hour: The value of an hour.
| minute: The value of a minute.
| second: field “second” contains no valid information in the current
  version.

| **Returns**
| The function returns “0” if success, otherwise returns a negative
  value for failure.

| **Example Code**
| Example: last_modified_time

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::open**

| **Description**
| Open a file.

| **Syntax**
| SdFatFile SdFatFs::open(char \*absolute_path);

| **Parameters**
| absolute_path: The path to a file.

| **Returns**
| The file object is an instance of SdFatFile.

| **Example Code**
| Example: create_folder; file_read_write; get_file_attribute;
  last_modified_time; list_root_files.

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
|  

**SdFatFs::status**

| **Description**
| Return the current status of SD.

| **Syntax**
| int SdFatFs::status(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Function returns “1” if ready to use, else return “0” if the status is
  inactivating or abnormal.

| **Example Code**
| NA.

| **Notes and Warnings**
| Include “SdFatFs.h” to use the class function.
