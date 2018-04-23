Rust source-to-image
====================

This repository contains the source for building Rust applications as reproducible Docker images using [source-to-image](https://github.com/openshift/source-to-image).

For more information about using these images with OpenShift, please see the
official [OpenShift Documentation](https://docs.openshift.org/latest/architecture/core_concepts/builds_and_image_streams.html#source-build).

Installation
---------------
To prepare the builder image:
```shell
$ git clone https://github.com/openshift-s2i/s2i-rust.git
$ cd s2i-rust
$ make build
```

Use
---------------
Use the `s2i` tool to build the final image that contains your application code:
```shell
$ s2i build ./examples/test-app/ openshift/rust-120-centos7 rust-test-app
```
* `./1.20/test/test-app/` is the top directory of your source code.
* `openshift/rust-120-centos7` is the name of the builder image created by `make build` above.
* `rust-test-app` is the name of the new image that contains your application code.

Finally, run the image:
```shell
$ docker run rust-test-app
```

Environment variables
---------------------

Application developers can use the following environment variables to configure the runtime behavior of this image:

NAME        | Description
------------|-------------
PROXY       | Use a cargo proxy during assembly

Versions
---------------
Rust versions currently supported:
* 1.7
* 1.20
