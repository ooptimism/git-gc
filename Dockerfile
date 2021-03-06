FROM qingfeng1987/k8s-gerrit-base:latest

COPY tools/* /var/tools/

RUN mkdir -p /var/log/git && \
    chown gerrit:users /var/log/git

USER gerrit

VOLUME ["/var/gerrit/git"]

ENTRYPOINT ["/var/tools/gc-all.sh"]
