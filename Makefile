# Variables are documented in hack/build.sh.
BASE_IMAGE_NAME = rust
VERSIONS = 1.7 1.20
OPENSHIFT_NAMESPACES = 1.7

# Include common Makefile code.
include hack/common.mk
