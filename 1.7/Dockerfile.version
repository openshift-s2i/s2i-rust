FROM openshift/base-centos7

# This image provides a Rust environment you can use to run your Rust
# applications.

MAINTAINER Michail Kargakis <kargakis@protonmail.ch>

EXPOSE 8080

ENV RUST_VERSION 1.7

LABEL io.k8s.description="Platform for building and running Rust 1.7 applications" \
      io.k8s.display-name="Rust 1.7" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,rust,rust17"

RUN (curl https://static.rust-lang.org/dist/rust-1.7.0-x86_64-unknown-linux-gnu.tar.gz | \
    tar -zxf -) && \
    ./rust-1.7.0-x86_64-unknown-linux-gnu/install.sh 

# Copy the S2I scripts from the specific language image to $STI_SCRIPTS_PATH
COPY ./s2i/bin/ $STI_SCRIPTS_PATH

USER 1001

# Set the default CMD to print the usage of the language image
CMD $STI_SCRIPTS_PATH/usage

