FROM sameersbn/gitlab:8.12.7

COPY sshd-entrypoint.sh /sbin/sshd-entrypoint.sh
RUN chmod 755 /sbin/sshd-entrypoint.sh
ENTRYPOINT ["/sbin/sshd-entrypoint.sh"]
CMD ["app:start"]
