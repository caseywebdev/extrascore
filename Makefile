BIN=node_modules/.bin/
COFFEE=$(BIN)coffee
UGLIFYJS=$(BIN)uglifyjs

all: extrascore.js

extrascore.js: extrascore.coffee
	$(COFFEE) -p extrascore.coffee | $(UGLIFYJS) > extrascore.js

.PHONY: all
