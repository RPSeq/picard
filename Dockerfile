FROM zlskidmore/picard:2.8.3

ADD entry.sh /opt/bin/entry.sh
RUN chmod +x /opt/bin/entry.sh

ENTRYPOINT ["/opt/bin/entry.sh"]

CMD ["java", "-jar", "/usr/bin/picard.jar"]
