CRUX Python Image
=================


A Docker image based on `crux <https://index.docker.io/u/_/crux>`_
for developing and running Python Apps.

Features:

- python
- setuptools
- pip
- git
- mercurial

Ready to run your Python apps!


Usage
-----

Python Interpreter:

::
    
    docker run -i -t crux/python

As a Base Image:

A ``onbuild`` tag is provided that uses ``ONBUILD`` triggers which you can
use as a base image for a standard python application. This assumes your
source tree has two top-level source files:

- ``requirements.txt``
- ``setup.py``

Example ``Dockerfile``::
    
    FROM crux/python:onbuild

    CMD ["myapp"]
