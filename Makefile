# OSX Makefile

wang.png: index.html index.css
	phantomjs --debug=false rasterize.js public/index.html wang.png

clean:
	rm wang.png
