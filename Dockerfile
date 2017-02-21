FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.4

RUN gem install itgwiki_mirror --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["itgwiki_mirror_backup"]
CMD ["--help"]
