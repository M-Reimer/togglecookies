# -*- Mode: Makefile -*-
#
# Makefile for Toggle Cookies
#

FILES = manifest.json \
        background.js \
        $(wildcard _locales/*/messages.json) \
        $(wildcard icons/*.svg)

togglecookies-trunk.xpi: $(FILES) icons/togglecookies-light.svg
	@zip -9 - $^ > $@

icons/togglecookies-light.svg: icons/togglecookies.svg
	@sed 's/:#0c0c0d/:#f9f9fa/g' $^ > $@

clean:
	rm -f togglecookies-trunk.xpi
	rm -f icons/togglecookies-light.svg
