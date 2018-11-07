.PHONY = install uninstall

NAME = goLang-http-server
INSTALL_LOCATION = /opt/${NAME}
SERVICE_SCRIPT = /etc/systemd/system/${NAME}.service

install:
	@cp ${NAME}.service ${SERVICE_SCRIPT}
	@mkdir -p ${INSTALL_LOCATION}
	@cp serve ${INSTALL_LOCATION}
	@cp -r index.html ${INSTALL_LOCATION}
	@systemctl daemon-reload

uninstall:
	@rm -rf ${INSTALL_LOCATION}
	@rm -rf ${SERVICE_SCRIPT}
