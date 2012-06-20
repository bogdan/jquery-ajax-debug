
VERSION="0.1.2"

all:
	cat src/banner.js | sed s/VERSION/$(VERSION)/ > jquery-ajax-debug.js
	coffee -cp src/jquery-ajax-debug.js.coffee >> jquery-ajax-debug.js
	mkdir -p builds
	cp jquery-ajax-debug.js builds/jquery-ajax-debug-${VERSION}.js

