SHELL := /bin/bash
PROJECT_PATH := $(shell git rev-parse --show-toplevel)
VENVNAME := .venv
VENVPATH := $(PROJECT_PATH)/$(VENVNAME)/bin
PYTHON_VERSION := "3.9"
determine_python = \
        det_python=; \
        for opt in python"$(PYTHON_VERSION)" python3 python; do \
          if type "$${opt}" &>/dev/null ; then det_python=$$opt; break; fi; \
        done; \
        if [ -z "$$det_python" ]; then echo 1>&2 "Unable to find python "; exit 2; else $$det_python -V ; fi


LINT_MAX_LINE_LENGTH := 120

.venv:
	@$(determine_python); \
	if ! [[ "$$($$det_python --version)" == *"$(PYTHON_VERSION)"* ]]; then echo "Required python $(PYTHON_VERSION) not found"; exit 1; fi; \
	$$det_python -m venv $(VENVNAME)

install: .venv
	. $(VENVPATH)/activate && \
	pip3 install -r requirements.txt

launch: 
	$(VENVPATH)/jupyter lab --notebook-dir=./notebooks --FileContentsManager.root_dir=./ --ContentsManager.allow_hidden=True --ip=0.0.0.0 --no-browser --NotebookApp.token='' --NotebookApp.password=''

stop:
	@echo "Stopping any running JupyterLab instance..."
	@-pkill -f "jupyter-lab"

clean: stop
	@echo "Deleting virtual environment..."
	@rm -vrf $(VENVNAME) | grep "'$(VENVNAME)'" || true