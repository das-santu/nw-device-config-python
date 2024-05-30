# Makefile

# Copyright(c) 2024, Santu Das. All rights reserved.
#

VENV_DIR ?= env
PYTHON ?= $(VENV_DIR)/bin/python
PIP ?= $(VENV_DIR)/bin/pip

# Set up the virtual environment
install:
	@echo -e '********************************************************************'
	@echo -e 'Install Python3 Virtual Environment!'
	@echo -e '********************************************************************'
	@python3 -m pip install --upgrade pip
	@pip3 install virtualenv

# Set up the virtual environment
setup:
	@echo -e '********************************************************************'
	@echo -e 'Setup Python3 Virtual Environment!'
	@echo -e '********************************************************************'
	@virtualenv -p python3 env
	@$(PIP) install -r requirements.txt

# Run your Flask application
run:
	@echo -e '********************************************************************'
	@echo -e 'Running the Python Script!'
	@echo -e '********************************************************************'
	@$(PYTHON) config.py

# Clean up
clean:
	@rm -rf env
	@find . -type f -name *.pyc -delete
	@find . -type d -name __pycache__ -delete
	@echo -e 'Virtual Environment Cleaned!'

# Create a requirments.txt files with prerequisite python library
freeze:
	@env/bin/pip freeze > requirements_new.txt