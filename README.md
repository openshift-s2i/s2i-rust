Rust source-to-image
====================

This repository contains the source for building Rust applications as reproducible Docker images using [source-to-image](https://github.com/openshift/source-to-image).

For more information about using these images with OpenShift, please see the
official [OpenShift Documentation](https://docs.openshift.org/latest/architecture/core_concepts/builds_and_image_streams.html#source-build).

Installation
---------------
To prepare the builder image:
```shell
$ git clone https://github.com/kargakis/sti-rust.git
$ cd sti-rust
$ make build
```

Use
---------------
Use the `s2i` tool to build the final image that contains your application code:
```shell
$ s2i build ./1.7/test/test-app/ openshift/rust-17-centos7 rust-test-app
```
* `./1.7/test/test-app/` is the top directory of your source code.
* `openshift/rust-17-centos7` is the name of the builder image created by `make build` above.
* `rust-test-app` is the name of the new image that contains your application code.

Finally, run the image:
```shell
$ docker run rust-test-app
```

Versions
---------------
Rust versions currently supported:
* 1.7

License
---------------
MIT
