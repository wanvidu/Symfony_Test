FROM gitpod/workspace-postgres

USER root

ENV PATH="~/.composer/vendor/bin:$PATH"

RUN apt-get update \
   && apt-get install -y wget php-bcmath php-mbstring php-xml \
   && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN wget https://get.symfony.com/cli/installer -O - | bash

RUN chmod 0777 -R ~
