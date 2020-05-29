FROM ubuntu:16.04
RUN apt update && \
	apt install -y curl telnet net-tools dnsutils vim mysql-client postgresql-client redis-tools wget apt-transport-https

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - && \
	echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list && \
	apt update && apt install -y mongodb-org-shell
