# OSX Makefile

wang.png: index.html
	phantomjs --debug=false rasterize.js index.html wang.png
