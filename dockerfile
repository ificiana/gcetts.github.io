# Create a Jekyll container from a Ruby Alpine image

# Ruby 2.5+
FROM ruby:3.2.0-alpine3.16

# Jekyll deps
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update bundler, install Jekyll
RUN gem update bundler && gem install bundler jekyll


# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

# install python packages
RUN pip3 install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir pymongo[srv] && \
    pip3 install --no-cache-dir pyyaml
