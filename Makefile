SRC = *.go
build: $(SRC)
	@go build -o process
	@echo 'built "process".'
stubs: build
	@./process -crunch.stubs="." -crunch.hivetemplate=templates/hive.tmpl -crunch.pigtemplate=templates/pig.tmpl

