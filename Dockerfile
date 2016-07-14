# Pull base image.
FROM dtr.cucloud.net/cs/awscli

COPY batch-rm.rb /opt/batch-rm.rb

RUN groupadd -g 7070 tcadm
RUN useradd -u 105 -g 7070 tomcat7
RUN chown tomcat7:tcadm /opt/batch-rm.rb
RUN chmod 775 /opt/batch-rm.rb

USER tomcat7
CMD /opt/batch-rm.rb
