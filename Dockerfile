FROM ruby:4.0
COPY . /build
RUN cd build && \
    bundle install
ENTRYPOINT [ "/usr/local/bundle/bin/wayback_machine_downloader" ]
