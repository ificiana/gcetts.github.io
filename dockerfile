# Create a Jekyll container from a Ruby Alpine image

# Ruby 2.5+
FROM ruby:2.7-alpine3.16

# Jekyll deps
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update bundler, install Jekyll
RUN gem update bundler && gem install bundler jekyll
