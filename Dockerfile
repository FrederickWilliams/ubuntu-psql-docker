FROM ubuntu:18.04

RUN apt-get update
# Official distros are so light they don't even include the sudo command
RUN apt-get install sudo postgresql postgresql-contrib -y

ENTRYPOINT service postgresql start && /bin/bash
