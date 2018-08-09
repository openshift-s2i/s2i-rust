# Variables are documented in hack/build.sh.
BASE_IMAGE_NAME = rust
VERSION = 1.26
VERSIONS = 1.7 1.20 1.26
OPENSHIFT_NAMESPACES = 1.7 1.20 1.26

include hack/common.mk
