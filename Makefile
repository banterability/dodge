SRC = $(shell find src -name "*.coffee" -type f | sort)
LIB = $(SRC:src/%.coffee=lib/%.js)
COFFEE=./node_modules/coffee-script/bin/coffee

usage:
	@echo ''
	@echo 'Task         : Description'
	@echo '------------ : -----------'
	@echo 'make build   : Recompile from Coffeescript'
	@echo ''

build: $(LIB)

lib/%.js: src/%.coffee
	dirname "$@" | xargs mkdir -p
	$(COFFEE) <"$<" >"$@"
