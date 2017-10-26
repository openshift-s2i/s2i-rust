FROM openshift/base-centos7

# This image provides a Rust environment you can use to run your Rust
# applications.

MAINTAINER Michail Kargakis <kargakis@protonmail.ch>

EXPOSE 8080

ENV RUST_VERSION 1.20

LABEL io.k8s.description="Platform for building and running Rust 1.20 applications" \
      io.k8s.display-name="Rust 1.20" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,rust,rust120" \
      name="openshift/rust-120-centos7" \
      version="1"

RUN yum install -y yum-utils && \
    yum install -y centos-release-scl && \
    yum-config-manager --enable centos-sclo-rh-testing && \
    INSTALL_PKGS="rust-toolset-7" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all -y

# Copy the S2I scripts from the specific language image to $STI_SCRIPTS_PATH
COPY ./s2i/bin/ $STI_SCRIPTS_PATH

USER 1001

# Set the default CMD to print the usage of the language image
CMD $STI_SCRIPTS_PATH/usage

