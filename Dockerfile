FROM ruby:3.0
COPY . /build
RUN cd build && \
    bundle install
ENTRYPOINT [ "/usr/local/bundle/bin/wayback_machine_downloader" ]
