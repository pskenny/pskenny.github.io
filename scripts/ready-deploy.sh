#!/bin/bash

cd ..
stack clean
stack build
stack exec site build

# Run lychee for link rot https://github.com/lycheeverse/lychee
cd docs
lychee *

