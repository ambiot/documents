# How to use

1. Install all necessary tools and environment

**Tools needed:**

- Python3
		https://www.python.org/downloads/

- sphinx

	```Bash
	pip install -U sphinx
	```

- sphinx rtd theme
	
	```Bash
	pip install sphinx-rtd-theme
	```

- pandoc

	https://pandoc.org/installing.html


2. Clean the directory
	```Makefile
	make clean
	```

3. Copy the rst file to the correct path

4. Update index.rst and fix heading issue in every rst file

5. Fix media path issue

6. Create html page
	```Makefile
	make html
	```
7. Push changes to github

8. Build docs using Readthedocs online hosting service

https://readthedocs.org/
