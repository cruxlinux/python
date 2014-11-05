CRUX Python Image
=================


A Docker image based on `crux <https://index.docker.io/u/_/crux>`_
for developing and running Python Apps.

Features:

- python
- setuptools
- pip

Ready to run your Python apps!


Usage
-----

Python Interpreter:

::
    
    docker run -i -t cruxlinux/python

As a Base Image:

This image contains ``ONBUIDL`` triggers so you can use this as a base
image on a stnadard python application source tree that contains a valid
top-level ``requirements.txt`` adn ``setup.py``.

Example ``Dockerfile``::
    
    FROM cruxlinux/python

    CMD ["myapp"]
