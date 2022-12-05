#!/usr/bin/python
# coding: utf8

import os

from setuptools import setup, find_packages

config = {
    "description": "Flask Azure Active Directory Auth",
    "author": "Matthias Wutte",
    "author_email": "matthias.wutte@gmail.com",
    "url": "https://github.com/wuttem/flask-ad-auth",
    "license": "MIT",
    "classifiers": [
        "Framework :: Flask",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Topic :: System :: Systems Administration :: Authentication/Directory",
    ],
    "version": "0.8",
    'install_requires': [
        "flask",
        "werkzeug",
        "flask-login",
        "requests"
    ],
    'tests_require': ["pytest", "mock"],
    "packages": find_packages(),
    "scripts": [],
    "name": "flask-ad-auth",
}

setup(**config)