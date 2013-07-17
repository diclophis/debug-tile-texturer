# OSX Makefile

wang.png: index.html index.css
	phantomjs --debug=false rasterize.js index.html wang.png

clean:
	rm wang.png
