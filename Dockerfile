# para ambiente de produção:
FROM docker-registry.default.svc:5000/openshift/rhsso-oracle
# para ambiente de desenvolvimento:
# FROM docker-registry.default.svc:5000/openshift/sso74-openshift-rhel8

USER 185

COPY custom-theme/detran /opt/eap/themes/detran

USER root

USER 185

CMD ["/opt/eap/bin/openshift-launch.sh"]
