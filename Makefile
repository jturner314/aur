SHELL = /bin/zsh

.PHONY: all source package test clean

all: source package

source:
	find -type f -name PKGBUILD -execdir mkaurball -f \;

package:
	find -type f -name PKGBUILD -execdir makepkg -f \;

test:
	namcap */PKGBUILD

clean:
	git clean -fxd
