## About

Dockerized 32-bit Firefox that works with Cisco WebEx, based on 32-bit Ubuntu (see also: https://github.com/ouyi/docker-ubuntu-precise-core-i386). Desktop sharing works (tested on a host machine running Linux fedora 4.4.9-300.fc23.x86\_64).

## Build

	docker build -t iaon/docker-ubuntu32-firefox:custom .

## Run

`./run.sh`

## Known issues

- Personal rooms not supported, according to https://help.webex.com/docs/DOC-4748
- If the host machine has a VPN connection, the Docker container may have problems accessing the Internet. Adding "--net=host" may work around the issue.
