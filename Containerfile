# podman build --build-arg=VERSION=XX  -t webserver-hello-ocp:XX

FROM --platform=linux/amd64  registry.access.redhat.com/ubi8/httpd-24

ARG VERSION="1.1"

# For software install
USER root

# Install utilities needed for demos and teaching
RUN dnf -y install iproute procps-ng iputils bind-utils && dnf clean all

# Add the default home page 
RUN echo "Simple hello world ( ${VERSION} ) " > /var/www/html/index.html

USER 1001
    

