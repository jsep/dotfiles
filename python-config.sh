#!/usr/bin/env bash

sudo apt install -y build-essential python3-dev python-dev libmysqlclient-dev libncurses5-dev libpq-dev python-pip
pip --version
pip install --upgrade pip
pip install virtualenv
pip install virtualenvwrapper
# PythonZ: a Python interpreter manager;
# https://github.com/saghul/pythonz
curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash
