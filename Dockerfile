FROM ruby:2.2.2

RUN apt-get update
RUN apt-get install -y build-essential chrpath libssl-dev libxft-dev

RUN apt-get install -y libfreetype6 libfreetype6-dev
RUN apt-get install -y libfontconfig1 libfontconfig1-dev

ENV PHANTOM_JS="phantomjs-1.9.8-linux-x86_64"

RUN wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
RUN tar xvjf $PHANTOM_JS.tar.bz2

RUN mv $PHANTOM_JS /usr/local/share
RUN ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
