tweetdeck-in-docker
===

Automated build that will result in a docker image with xubuntu and tweetdeck ( tweetdeck installed via wine )

## Why
- - -
More info about the existence of this container in this blog post: http://www.procmind.com/blog/2015/04/19/tweetdeck-on-linux/


## Tested
- - -
Tested on Ubuntu 14.04 x64 , should work on all modern Linux distros where docker works.


## Installed packages
- - -
tweetdeck + `cat Dockerfile`


## Run example
- - -
```bash
docker run -p 22222:22 -t -d --name tweetdeck stefancocora/tweetdeck-in-docker:latest
...
docker logs tweetdeck
to get the user/password credentials
...
use x2goclient to establish a remote X11 session to 127.0.0.1:22222 with the above credentials
```

All above steps give you a tweetdeck running in wine running in xubuntu running in a docker container to experiment with.


## Tweetdeck versions
https://about.twitter.com/products/tweetdeck

Since tweetdeck doesn't provide readily available information about tweetdeck versioning I'm always pulling and building the latest(according to them) tweetdeck.


## Resources and inspiration

- https://github.com/paimpozhil/DockerX2go


## Issues
- - -
Use github issues on this repo to report any issues encountered.
