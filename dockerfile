# Create a Jekyll container from a Ruby Alpine image

# Ruby 2.5+
FROM ruby:3.1.2-alpine3.16

# Jekyll deps
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update bundler, install Jekyll
RUN gem update bundler && gem install bundler jekyll


# Install python
RUN \
  apt-get update && \
  apt-get install -y python3

# install python packages
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pymongo[srv] && \
    pip install --no-cache-dir pyyaml
