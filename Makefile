pdf: init
	latexmk -halt-on-error < /dev/null

clean:
	latexmk -c

clean-all:
	latexmk -C
	rm -rf build/

## Stuff to set up repository after cloning

init: .init-submodule-cert

.init-submodule-cert:
	@echo "[Make] Initialising git submodule for packages"
	git submodule update --init --rebase
	@touch .init-submodule-cert


.PHONY: pdf, clean, clean-all
