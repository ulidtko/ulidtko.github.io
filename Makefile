output.html: logo-requirements.mdown run-template.sh
	./run-template.sh logo-requirements.mdown > output.html

.PHONY: output.html
