# OSX Makefile

# must be in public dir
INPUT_IMAGE=0.png

PHANTOM := /usr/local/bin/phantomjs
SIZE := 1024
PIDFILE := $(shell mktemp -t rackup)

open: sprite.png
	open sprite.png

sprite.png: $(PHANTOM) public/* rasterize.js config.ru
	rackup & echo "$$!" > $(PIDFILE)
	$(PHANTOM) --debug=false rasterize.js http://localhost:9292/index.html?$(INPUT_IMAGE) sprite.png $(SIZE) > sprite.dat
	cat $(PIDFILE) | xargs -I{} kill -kill {}

clean:
	rm sprite.png
	rm sprite.dat
