install:
	#install commands
	pip install --upgrade pip &&\
	pip install -r requirments.txt
format:
	#format code
	black *.py mylib/*.py
lint:
	#flake8 or pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
deploy:
	#deploy
all: install lint test deploy
