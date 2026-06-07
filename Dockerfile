FROM zmkfirmware/zmk-build-arm:stable

RUN apt update && apt install -y yq
COPY build.sh /usr/local/bin/build.sh

RUN chmod +x /usr/local/bin/build.sh
ENTRYPOINT ["/usr/local/bin/build.sh"]
