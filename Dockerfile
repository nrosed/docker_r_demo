FROM rocker/r-ver:3.5

WORKDIR /app

# install R deps, this is the snapshotted version
# from when the project was being developed
# WHEN is defined in build_image.sh
ARG WHEN
COPY ./install.R /tmp
RUN /tmp/install.R ${WHEN}


# copy in the rest of the app code
COPY . ./
