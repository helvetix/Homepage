SOURCES=/mnt/c/Users/helve/Development/Homepage
DESTINATION=/home/helvetix/homepage

all:
	@echo "Run this in the virtualized Linux"
	@echo "make install -- install from ${SOURCES} to ${DESTINATION}"

${DESTINATION}:
	mkdir -p ${DESTINATION}

install: ${DESTINATION}
	( cd ${DESTINATION} ; docker compose stop )
	sudo rm -rf ${DESTINATION}
	cp -rp ${SOURCES}/. ${DESTINATION}
	( cd ${DESTINATION} ; docker compose up -d )


