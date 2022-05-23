# var
MODULE = $(notdir $(CURDIR))
module = $(shell echo $(MODULE) | tr A-Z a-z)
OS     = $(shell uname -o|tr / _)
NOW    = $(shell date +%d%m%y)
REL    = $(shell git rev-parse --short=4 HEAD)
BRANCH = $(shell git rev-parse --abbrev-ref HEAD)
PEPS   = E26,E302,E305,E401,E402,E701,E702

# dir
CWD   = $(CURDIR)
TMP   = $(CWD)/tmp

# tool
CURL   = curl -L -o
CF     = clang-format
PY     = $(shell which python3)
PIP    = $(shell which pip3)
PEP    = $(shell which autopep8)

# src
P += metaL.py $(MODULE).meta.py
S += $(P)

# all
.PHONY: all
all:
	$(MAKE) format

GEN =
.PHONY: gen
gen: $(PY) $(MODULE).meta.py
	$^ $(GEN) && $(MAKE) format

# format
.PHONY: format
format: tmp/format_py

tmp/format_py: $(P)
	$(PEP) --ignore=$(PEPS) -i $? && touch $@

# doc

.PHONY: doxy
doxy: doxy.gen
	rm -rf docs ; doxygen $< 1>/dev/null

.PHONY: doc
doc:
	rsync -rv ~/mdoc/Erlang/* doc/Erlang/
	rsync -rv ~/mdoc/IoT/* doc/IoT/

# install
install: $(OS)_install doc gz
	$(MAKE) update
update: $(OS)_update doc gz
	$(PIP) install --user -U pip autopep8

GNU_Linux_install:
GNU_Linux_update:
	sudo apt update
	sudo apt install -yu `cat apt.txt apt.dev`

gz:

# merge
MERGE  = Makefile README.md .clang-format doxy.gen apt.dev apt.txt $(S)
MERGE += .vscode bin doc lib src tmp

dev:
	git push -v
	git checkout $@
	git pull -v
	git checkout shadow -- $(MERGE)
	$(MAKE) doc && git add doc

shadow:
	git push -v
	git checkout $@
	git pull -v

release:
	git tag $(NOW)-$(REL)
	git push -v --tags
	$(MAKE) shadow

ZIP = tmp/$(MODULE)_$(NOW)_$(REL)_$(BRANCH).zip
zip:
	git archive --format zip --output $(ZIP) HEAD
