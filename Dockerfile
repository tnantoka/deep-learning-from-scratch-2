FROM tnantoka/miniconda3-ruby


# Conda

RUN conda install nomkl

# Bundle


RUN mkdir /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

WORKDIR /app
RUN bundle


# Heroku

ENTRYPOINT []
CMD [ "/bin/bash" ]


# App

ADD . /app
