.POSIX:
.DEFAULT_GOAL := help
DESTDIR=public
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

# See <https://gist.github.com/klmr/575726c7e05d8780505a> for explanation.
.PHONY: help
help:
	@echo "$$(tput bold)Available Operations:$$(tput sgr0)";echo;sed -ne"/^## /{h;s/.*//;:d" -e"H;n;s/^## //;td" -e"s/:.*//;G;s/\\n## /---/;s/\\n/ /g;p;}" ${MAKEFILE_LIST}|LC_ALL='C' sort -f|awk -F --- -v n=$$(tput cols) -v i=19 -v a="$$(tput setaf 6)" -v z="$$(tput sgr0)" '{printf"%s%*s%s ",a,-i,$$1,z;m=split($$2,w," ");l=n-i;for(j=1;j<=m;j++){l-=length(w[j])+1;if(l<= 0){l=n-i-length(w[j])-1;printf"\n%*s ",-i," ";}printf"%s ",w[j];}printf"\n";}'

.PHONY: server
## Run Hugo server
server: build
	@echo "* Run Hugo server"
	hugo server -D 

.PHONY: build
## Build content
build: clean
	@echo "* Generating site"
	hugo --gc --minify -d $(DESTDIR)

.PHONY: clean
## Clean workspace
clean:
	@echo "* Cleaning old build"
	cd $(DESTDIR) && rm -rf *

.PHONY: update-theme
## Update the Cogno Theme
update-theme: 
	@hugo mod get -u