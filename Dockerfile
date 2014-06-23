FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:brightbox/ruby-ng-experimental

RUN apt-get update
RUN apt-get install -y ruby2.0 ruby2.0-dev
RUN gem2.0 install fake_sqs

EXPOSE 3000

CMD /usr/local/bin/fake_sqs -p 3000 --no-daemonize
