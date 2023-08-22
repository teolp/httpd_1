FROM httpd:2.4
RUN mkdir /mateolozano-2503285
RUN chmod 777 /mateolozano-2503285
COPY recursos/img1.jpg /mateolozano-2503285
COPY main.sh /mateolozano-2503285
RUN chmod 777 /mateolozano-2503285/main.sh
RUN sh /mateolozano-2503285/main.sh
COPY 2/template2/* /usr/local/apache2/htdocs/
CMD [ "httpd-foreground" ]
