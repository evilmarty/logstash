FROM logstash:latest

CMD ["logstash", "-f", "/etc/logstash.conf"]

ADD logstash.conf /etc/

RUN apt-get update && apt-get install -y build-essential ruby ruby-dev && rm -rf /var/lib/apt/lists/*
RUN gem install bundler internode
