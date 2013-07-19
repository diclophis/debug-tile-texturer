# OSX Makefile

SIZE=9082

sprite.png: public/index.html public/index.css rasterize.js public/less-1.4.1.min.js
	phantomjs --debug=false rasterize.js http://localhost:9292/index.html sprite.png $(SIZE) > sprite.dat

clean:
	rm sprite.png
	rm sprite.dat
