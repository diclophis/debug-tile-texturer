# OSX Makefile

wang.png: index.html
	phantomjs rasterize.js index.html wang.png
