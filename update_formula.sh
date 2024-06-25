#!/bin/bash

set -e

VERSION=$1
BINARY_NAME=$2

# Paths to the checksums
LINUX_CHECKSUM=$(cat ../${BINARY_NAME}-${VERSION}-linux.sha256/${BINARY_NAME}-${VERSION}-linux.sha256 | awk '{ print $1 }')
MACOS_CHECKSUM=$(cat ../${BINARY_NAME}-${VERSION}-macos.sha256/${BINARY_NAME}-${VERSION}-macos.sha256 | awk '{ print $1 }')
echo "Linux checksum: ${LINUX_CHECKSUM}"
echo "macOS checksum: ${MACOS_CHECKSUM}"

# Path to the formula file
FORMULA_FILE="Formula/${BINARY_NAME}.rb"
echo "Updating formula file: ${FORMULA_FILE}"

# Check if the formula file exists
if [ ! -f "${FORMULA_FILE}" ]; then
  echo "Error: Formula file ${FORMULA_FILE} does not exist."
  exit 1
fi

# Update the version
sed -i '' "s/version \".*\"/version \"${VERSION}\"/g" ${FORMULA_FILE}

# Update the macOS URL and checksum
sed -i '' "s|url \".*macos.*\"|url \"https://github.com/user/repo/releases/download/v${VERSION}/${BINARY_NAME}-${VERSION}-macos.tar.gz\"|g" ${FORMULA_FILE}
sed -i '' "s|sha256 \".*MACOS.*\"|sha256 \"${MACOS_CHECKSUM}\"|g" ${FORMULA_FILE}

# Update the Linux URL and checksum
sed -i '' "s|url \".*linux.*\"|url \"https://github.com/user/repo/releases/download/v${VERSION}/${BINARY_NAME}-${VERSION}-linux.tar.gz\"|g" ${FORMULA_FILE}
sed -i '' "s|sha256 \".*LINUX.*\"|sha256 \"${LINUX_CHECKSUM}\"|g" ${FORMULA_FILE}
