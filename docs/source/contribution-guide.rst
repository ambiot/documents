:orphan:

***********************
How to Contribute
***********************

Contributions to `Ameba MicroPython SDK <https://github.com/ambiot/ambd_micropython>`_ including: "adding features", "adding/modifying documentation", "fixing bugs".
Before you do so, please read the :ref:`coding-style` and :ref:`contribution-guide`.

.. note:: 
    The **Ameba Arduino/SDK/MicroPython** codebase is hosted on GitHub, you can submit new features or bug fixes using `Github Pull Requests <https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests>`_. 
   

***********************
Code Acceptance
***********************

Before sending us a Pull Request according to the `Guide <https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests>`_.

Default Pull Request should be made on ``dev`` branch. Once your Pull Request is submitted, our developers will take a look and comment on the Pull Request. 

If all is well and acceptable, your code will be ready for merging into the ``master`` branch.

.. _coding-style:

***********************
Coding Style
***********************

Ameba Coding Style mostly adopts from Mbed OS. Whether you're writing new code or fixing bugs in existing code, please follow the Ameba coding style.

Ameba follows the `K&R style -- Variant: 1TBS <https://en.wikipedia.org/wiki/Indent_style#K.26R_style>`_, with a few exceptions，

* Indentation - four spaces. Please do not use tabs.
* Braces - K&R style. One true brace style (1TBS) 
* One line per statement.
* Each line preferably has at most 120 characters.
* Space after statements of type ``if`` , ``while`` , ``for`` , ``switch`` . The same applies to operators (like, ``+``, ``=`` and ``*`` ) and the ternary operator ( ``?`` and ``:`` ).
* For pointers or references, the symbols ``*`` or ``&`` are adjacent to a type ( ``analogin_t* obj`` . ``analogin_t& obj`` ). 
* Empty lines should have no trailing spaces.
* Use capital letters for macros.
* Preprocessor macro starts at the beginning of a new line; the code inside is indented according to the code above it.

Naming conventions
====================

Classes
-------

* Begin with a capital letter, and each word within a class also begins with a capital letter (``AnalogIn``, ``BusInOut``).
* Private members start with an underscore: ``__User defined types (typedef)))`` .

Functions
-----------

* Use lower case letters
* Words separated by a capital letter of the subsequent work (``readDir``, ``getRootPath``).


.. _contribution-guide:

***********************
Contribution Guideline
***********************

Before contributing an enhancement (for example, a new feature or new port), 
please discuss it on `Ameba Forum <https://forum.amebaiot.com/>`_ or on the 
`Facebook group [EN] <https://www.facebook.com/groups/amebaioten>`_/ `[ZH] <https://www.facebook.com/groups/AmebaIoT>`_ 
to avoid duplication of work, as we or others might be working on a related feature.

We can only accept contributions through GitHub if you create a Pull Request from forked 
versions of our repositories. This allows us to review the contributions in an easy-to-use 
and reliable way, under public scrutiny.

Please create separate Pull Requests for each topic; each Pull Request needs a clear unity 
of purpose. In particular, separate code formatting and style changes from functional 
changes. This makes each Pull Request’s true contribution clearer, so the review is quicker 
and easier.


Reporting Bugs
====================

You can submit Ameba Bugs directly on `GitHub <https://github.com/ambiot>`_. Please 
submit questions or enhancement requests on the `Ameba Forums <https://forum.amebaiot.com/>`_ 
or on the `Facebook group [EN] <https://www.facebook.com/groups/amebaioten>`_/ `[ZH] <https://www.facebook.com/groups/AmebaIoT>`_
The bug report should be reproducible (fails for others) and specific (where and how it fails). We will close insufficient bug reports.

GitHub Pull Request (PR)
=========================

.. important:: 
    ❗ All Pull Requests are to be submitted to ``dev`` branch, 
    PR to master branch will not be accepted

Categories of PR
---------------------
.. 1. Changes pertaining to :ref:`software-pr` only
.. 2. Changes pertaining to additional :ref:`hardware-pr`
.. 3. :ref:`contributor-pr` features

.. _software-pr:

Software PRs
^^^^^^^^^^^^^^^^^^^^^

    For the software-only PRs, contents of which should be placed under path below:
        ``https://github.com/ambiot/ambd_arduino/tree/dev/Arduino_package/hardware``

    | Note that code submitted under this path will be actively tested and maintained by the official development team. Please test the new software feature with the latest release version before submitting a PR. 
    | Other than that, software PR can be the easiest/fastest to be reviewed and merged.

    For people who wants to contribute to the Ameba `ReadtheDocs online documentation <https://github.com/ambiot/documents>`_ repository. 
    Please following the `guide <https://www.sphinx-doc.org/en/master/contents.html>`__ for Sphinx-based documentations and make Pull Request. 

.. _hardware-pr:

Hardware PRs
^^^^^^^^^^^^^^^^^^^^^
    For the contributed items that require extra hardware implementation/products, it is recommended that the 
    contributed content can be saved as a :guilabel:`.ZIP` library which can be easily installed using Arduino IDE's built-in function.

    Such libraries should be stored in the path below:
        ``https://github.com/ambiot/ambd_arduino/tree/master/Arduino_zip_libraries``

    .. note::
        Detailes of preparing a :guilabel:`.ZIP` library can be found `here <https://www.arduino.cc/en/Hacking/LibraryTutorial>`_

.. _contributor-pr:

Contributors-maintained PRs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    If you have created some features which you would love to actively maintain, yet still make it known and easily accessible 
    by other community members, you may consider updating your work to the following path in the form of a :guilabel:`readme`:
    ``https://github.com/ambiot/ambd_arduino/tree/master/Ameba_misc``

    Details of your work should include:

       1. The purpose/use of this feature
       2. How to use this feature
       3. In which version of SDK was the feature tested


Requirements of PR
---------------------

Pull Requests on GitHub have to meet the following requirements to keep the code and commit history clean:

   * Commits must always contain a proper description of their content. Start with a concise and sensible one-line description. Then, elaborate on reasoning of the choices made, descriptions for reviewers, and other information that might otherwise be lost.
   * Because we use GitHub, special commit tags that other projects may use, such as “Reviewed-by”, or “Signed-off-by”, are redundant and should be omitted. 
   * All new features and enhancements require documentation(at least an easy-to-follow :guilabel:`readme`), tests for us to accept them. 
   * Avoid merging commits. (Always rebase whenever possible to keep commit history clean)
   * Smaller Pull Requests are easier to review and faster to integrate. 

See the example here::

    Update early access SDK 3.0.9-build20210408

        Feature:
        - support board RTL8720DN_BW16
        - update Eink lib
        API Updates:
        - pre support Microsoft Azure IoT cloud
        -- enable "strnlen" from rom
        -- add "#define yield" for compilation
        - update SPI, I2C, Fatfs, Audiocodec and UART for RTL8720DN_BW16
        Misc:
        - add RTL8720DN_BW16 frizting folder

If commits do not follow the above guidelines, we may request that you modify the commit history (often to add more details to address *what* and *why* rather than *how* ).


***********************
Related Links
***********************

* `Github Pull Requests <https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests>`__
* `Contributing to Ameba <https://github.com/ambiot/ambd_arduino/wiki/Contributing-to-Ameba#code-acceptance>`__
* `K&R style -- Variant: 1TBS <https://en.wikipedia.org/wiki/Indent_style#K.26R_style>`__