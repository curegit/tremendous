.PHONY: help format

help:
	@cat $(MAKEFILE_LIST)

format:
	python3 -m black --target-version py27 PublicMaps
