## About

Dockerized 32-bit Firefox that works with Cisco WebEx, based on 32-bit Ubuntu (see also: https://github.com/ouyi/docker-ubuntu-precise-core-i386). Desktop sharing works (tested on a host machine running Linux fedora 4.4.9-300.fc23.x86\_64).

## Build

	docker build -t iaon/docker-ubuntu32-firefox:custom .

## Run

`./run.sh`

## Known issues

- Personal rooms not supported, according to https://help.webex.com/docs/DOC-4748
- If the host machine has a VPN connection, the Docker container may have problems accessing the Internet. Adding "--net=host" may work around the issue.
- Sometimes fails with error message
```
The error was 'BadAccess (attempt to access private resource denied)'.
  (Details: serial 331 error_code 10 request_code 140 minor_code 5)
  (Note to programmers: normally, X errors are reported asynchronously;
   that is, you will receive the error a while after causing it.
   To debug your program, run it with the GDK_SYNCHRONIZE environment
   variable to change this behavior. You can then get a meaningful
   backtrace from your debugger if you break on the gdk_x_error() function.)
```

It happens due to https://bugzilla.mozilla.org/show_bug.cgi?id=1286649 Fixed in FF50 but it's not usable yet.
Just start it again.
