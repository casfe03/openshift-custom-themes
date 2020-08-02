FROM docker-registry.default.svc:5000/openshift/rhsso-oracle

USER 185

COPY custom-theme/detran /opt/eap/themes/detran

USER root

USER 185

CMD ["/opt/eap/bin/openshift-launch.sh"]
