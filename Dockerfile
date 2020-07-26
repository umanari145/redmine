From redmine:4-passenger

COPY config/database.yml /usr/src/redmine/config/database.yml
COPY config/settings.yml /usr/src/redmine/config/settings.yml
COPY config/configuration.yml /usr/src/redmine/config/configuration.yml

RUN apt-get update 
RUN apt-get install -y zip unzip imagemagick;

# redmine_ckeditor
RUN wget https://github.com/a-ono/redmine_ckeditor/archive/master.zip  -O ./plugins/redmine_ckeditor.zip
RUN unzip ./plugins/redmine_ckeditor.zip
RUN mv redmine_ckeditor-master ./plugins/redmine_ckeditor

EXPOSE 3000
