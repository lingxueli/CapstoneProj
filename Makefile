setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv ~/.devops

install:
	# This should be run from inside a virtualenv
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	echo "Please enter the abosolute path of this project:\n"
	
	nosetests --verbosity=2 ${1?Error: no path given}
lint:
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C manage.py

all: install lint test
