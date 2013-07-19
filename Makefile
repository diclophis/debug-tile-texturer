# OSX Makefile

SIZE=1024

open: sprite.png
	open sprite.png

sprite.png: public/* rasterize.js
	phantomjs --debug=false rasterize.js http://localhost:9292/index.html sprite.png $(SIZE) > sprite.dat

clean:
	rm sprite.png
	rm sprite.dat
