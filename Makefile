hello:
	@echo '====> Installing flex'
	@sudo apt-get install  -y
	@echo '====> Creating lab directories and populating with template data'
	@python script.py