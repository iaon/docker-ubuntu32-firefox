FROM ouyi/docker-ubuntu32-firefox

CMD ["/usr/bin/firefox", "-no-remote", "--new-instance", "https://www.webex.com/go/attend-meeting"]
