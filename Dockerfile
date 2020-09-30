FROM debian:buster-slim

RUN apt-get update && apt-get install curl -y
RUN curl -LJO https://dl4jz3rbrsfum.cloudfront.net/software/ppb440-linux-x86_x64.sh
RUN chmod +x /ppb440-linux-x86_x64.sh && ./ppb440-linux-x86_x64.sh -c -q -overwrite

EXPOSE 3052

CMD ["/usr/local/bin/ppbed", "run"]



# http://localhost:3052/local