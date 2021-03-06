#!/bin/bash

if [ "$1" = "-i" ]; then
	echo "Running autopep8 in in-place mode."
	exec autopep8 -i -j0 -a -a -r annif tests docs *.py
else
	echo "Running autopep8 in diff mode. Use -i for in-place mode."
	echo ""
	exec autopep8 -d -a -a -r annif tests docs *.py
fi
