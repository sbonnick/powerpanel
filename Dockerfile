FROM debian:buster-slim

ADD https://dl4jz3rbrsfum.cloudfront.net/software/ppb440-linux-x86_x64.sh /ppb.sh
RUN ./ppb.sh -c -q -overwrite

EXPOSE 3052

CMD ["/usr/local/bin/ppbed", "run"]



# http://localhost:3052/local