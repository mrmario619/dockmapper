FROM ubuntu:18.04
RUN apt-get update && apt-get install -y nmap curl xsltproc
RUN curl -O "https://raw.githubusercontent.com/mrmario619/nmap-bootstrap-xsl/master/nmap-bootstrap.xsl"
COPY entrypoint.sh .
ENTRYPOINT [ "./entrypoint.sh" ]