install:
	#install commands
	pip install --upgrade pip &&\
	pip install -r requirments.txt
	python -m textblob.download_corpora
format:
	#format code
	black *.py mylib/*.py
lint:
	#flake8 or pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
	python -m pytest -vv --cov=mylib --cov=main test_logic.py test_main.py
build:
	#build container
	docker build -t deploy-fastapi .
run:
	#docker run  
	docker run -p 127.0.0.1:8080:8080  cbc9b6c88c5f
deploy:
	#deploy
all: install lint test deploy
