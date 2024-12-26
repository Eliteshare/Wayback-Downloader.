FROM ruby:3.4
COPY . /build
RUN cd build && \
    bundle install
ENTRYPOINT [ "/usr/local/bundle/bin/wayback_machine_downloader" ]
