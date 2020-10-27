FROM openjdk:jre-slim

COPY entrypoint.sh /entrypoint.sh

ADD https://github.com/pinterest/ktlint/releases/download/0.39.0/ktlint /usr/local/bin/ktlint
RUN chmod +x /usr/local/bin/ktlint

ENTRYPOINT ["/entrypoint.sh"]
