FROM debian:buster-slim

COPY response.varfile /response.varfile
RUN apt-get update && apt-get install curl -y
RUN curl -LJO https://dl4jz3rbrsfum.cloudfront.net/software/ppb440-linux-x86_x64.sh
RUN chmod +x /ppb440-linux-x86_x64.sh \
 && ./ppb440-linux-x86_x64.sh -q -overwrite -varfile /response.varfile

EXPOSE 3052

CMD ["/usr/local/PPB/ppbed", "run"]



# http://localhost:3052/local