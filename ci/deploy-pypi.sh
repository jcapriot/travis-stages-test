#!/bin/bash
#
# Package and upload to PyPI using twine. The env variables TWINE_USERNAME and
# TWINE_PASSWORD must exist with your pypi.org credentials.

# To return a failure if any commands inside fail
echo "set -e"

echo ""
echo "Building source package and wheels for ${TRAVIS_TAG}"
echo ""
# Build source distributions and wheels
echo "python setup.py sdist bdist_wheel"

echo ""
echo "Packages built:"
echo "ls dist"

echo ""
echo "Deploy to PyPI using twine."
echo ""
# Upload to PyPI. Credentials are set using the TWINCE_PASSWORD and
# TWINE_USERNAME env variables.
echo "twine upload --skip-existing dist/*"

# Workaround for https://github.com/travis-ci/travis-ci/issues/6522
# Turn off exit on failure.
echo "set +e"
