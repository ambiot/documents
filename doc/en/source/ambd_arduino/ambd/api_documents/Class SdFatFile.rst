Class SdFatFile
=========================

**Description**

Defines a class of SD FAT File.

| **Syntax**
| class SdFatFile

**Members**

======================= ===========================================
**Public Constructors**  
======================= ===========================================
SdFatFile::SdFatFile    Constructs a SdFatFile object
SdFatFile::~SdFatFile   Destructs a SdFatFile object
**Public Methods**       
SdFatFile::write        Write 1 byte/bytes to file
SdFatFile::read         Read 1 byte/bytes from the file
SdFatFile::peek         Read 1 byte from file without move curser
SdFatFile::available    Check if the cursor is at EOF (End-Of-File)
SdFatFile::bool         Check if file is opened
SdFatFile::seek         Change cursor to a specific position
SdFatFile::close        Close file
======================= ===========================================

**SdFatFile::write**

| **Description**
| Write 1 byte or bytes to the file.

| **Syntax**
| size_t SdFatFile::write(uint8_t c);
| size_t SdFatFile::write(const uint8_t \*buf, size_t size);

| **Parameters**
| c: The character to be written.
| buf: The buffer to be written.
| size: The length of buffer to be written.

| **Returns**
| The function returns the number of byte count that has been
  successfully written to the file.

| **Example Code**
| NA.

| **Notes and Warnings**
| Include “SdFatFile.h” to use the class function. 

**SdFatFile:: read**

| **Description**
| Read 1 byte or bytes from the file.

| **Syntax**
| int SdFatFile::read(void);
| int SdFatFile::read(void \*buf, uint16_t nbyte);

| **Parameters**
| buf: The buffer to store the content.
| nbyte: The buffer size. (Or can be regarded as the desired length to
  read).

| **Returns**
| The function returns a read character or the read size of the buffer.

**Example Code**

1.  #include "FatFs_SD.h"

2.   

3.  char dirname[] = "testdir";

4.  char filename[] = "test.txt";

5.  char write_content[] = "hello world!";

6.   

7.  FatFsSD fs;

8.   

9.  void setup() {

10. char buf[128];

11. char absolute_filename[128];

12.  

13. fs.begin();

14.  

15. sprintf(absolute_filename, "%s%s", fs.getRootPath(), dirname);

16. fs.mkdir(absolute_filename);

17. printf("create dir at \\"%s\"\r\n", absolute_filename);

18.  

19. sprintf(absolute_filename, "%s%s/%s", fs.getRootPath(), dirname,
    filename);

20. SdFatFile file = fs.open(absolute_filename);

21. file.println(write_content);

22. file.close();

23. printf("create file at \\"%s\"\r\n", absolute_filename);

24.  

25. printf("read back from \\"%s\"\r\n", absolute_filename);

26. file = fs.open(absolute_filename);

27.  

28. memset(buf, 0, sizeof(buf));

29. file.read(buf, sizeof(buf));

30.  

31. file.close();

32. printf("==== content ====\r\n");

33. printf("%s", buf);

34. printf("==== end ====\r\n");

35.  

36. fs.end();

37. }

38.  

39. void loop() {

40. delay(1000);

41. }

42.  

| Example: create_folder;
| This example shows how to create a folder and open a file under it.

1.  #include "FatFs_SD.h"

2.   

3.  char filename[] = "test.txt";

4.  char write_content[] = "hello world!";

5.   

6.  FatFsSD fs;

7.   

8.  void setup() {

9.  char buf[128];

10. char absolute_filename[128];

11.  

12. fs.begin();

13.  

14. printf("write something to \\"%s\"\r\n", filename);

15. sprintf(absolute_filename, "%s%s", fs.getRootPath(), filename);

16. SdFatFile file = fs.open(absolute_filename);

17.  

18. file.println(write_content);

19.  

20. file.close();

21. printf("write finish\r\n\r\n");

22.  

23. printf("read back from \\"%s\"\r\n", filename);

24. file = fs.open(absolute_filename);

25.  

26. memset(buf, 0, sizeof(buf));

27. file.read(buf, sizeof(buf));

28.  

29. file.close();

30. printf("==== content ====\r\n");

31. printf("%s", buf);

32. printf("==== end ====\r\n");

33.  

34. fs.end();

35. }

36.  

37. void loop() {

38. delay(1000);

39. }

40.  

| Example: file_read_write;
| This example shows how to open/close files and perform read/write to
  it.

| **Notes and Warnings**
| Include “SdFatFile.h” to use the class function. 

**SdFatFile:: peek**

| **Description**
| Read one byte from the file without moving the curser.

| **Syntax**
| int SdFatFile::peek(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the read character as an integer number.

| **Example Code**
| NA

| **Notes and Warnings**
| Include “SdFatFile.h” to use the class function. 

**SdFatFile:: available**

| **Description**
| Check if the cursor is at EOF.

| **Syntax**
| int SdFatFile::available(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns “0” if the cursor is at EOF, else returns “1”.

| **Example Code**
| NA

| **Notes and Warnings**
| Include “SdFatFile.h” to use the class function. 

**SdFatFile:: flush**

| **Description**
| It is a nop. This is an inherited function from class Stream. And it
  does not affect SD File.

| **Syntax**
| void SdFatFile::flush(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Include “SdFatFile.h” to use the class function. 

**SdFatFile:: seek**

| **Description**
| Change cursor to a specific position.

| **Syntax**
| int SdFatFile::seek(uint32_t pos);

| **Parameters**
| pos: The desired position.

| **Returns**
| The function returns 0 if success otherwise returns a negative value.

| **Example Code**
| NA

| **Notes and Warnings**
| Include “SdFatFile.h” in order to use the class function. 

**SdFatFile:: close**

| **Description**
| Close file.

| **Syntax**
| int SdFatFile::close(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns 0 if runs successfully otherwise it returns a
  negative value.

| **Example Code**
| Example: last_modified_time;
| The example shows how to get and set last modified time of a file.

| Example: create_folder;
| This example shows how to create a folder and open a file under it.
  The details of the code can be found in the section of SdFatFile::
  read.
| Example: file_read_write;
| This example shows how to open/close files and perform read/write to
  it. The details of the code can be found in the section of SdFatFile::
  read.

1.  #include <FatFs_SD.h>

2.   

3.  FatFsSD fs;

4.   

5.  char filename[] = "test.txt";

6.   

7.  void setup() {

8.  char absolute_filename[128];

9.   

10. uint16_t year = 2021;

11. uint16_t month = 4;

12. uint16_t date = 4;

13. uint16_t hour = 12;

14. uint16_t minute = 12;

15. uint16_t second = 12;

16.  

17. fs.begin();

18.  

19. sprintf(absolute_filename, "%s%s", fs.getRootPath(), filename);

20. SdFatFile file = fs.open(absolute_filename);

21. file.close();

22.  

23. fs.setLastModTime(absolute_filename, year, month, date, hour,
    minute, second);

24.  

25. fs.getLastModTime(absolute_filename, &year, &month, &date, &hour,
    &minute, &second);

26. printf("filename:\"%s\"\r\n", absolute_filename);

27. printf("time mod:%04d/%02d/%02d %02d:%02d:%02d\r\n", year, month,
    date, hour, minute, second);

28.  

29. fs.end();

30. }

31.  

32. void loop() {

33. delay(1000);

34. }

35.  

| **Notes and Warnings**
| Include “SdFatFile.h” in order to use the class function.
