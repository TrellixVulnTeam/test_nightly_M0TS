#!/bin/bash
rm -rf dist/*
FASTESTIMATOR_IS_NIGHTLY=1 python setup.py sdist bdist_wheel 
twine upload --config-file /home/jenkins/.pypirc --repository testpypi dist/*
