# gatsby-and-firebase

This is a test of how Firebase works with Gatsby.js. It illustrates how Firebase 5.x cannot be installed with Gatsby.js 1.x.

## Run

### Successful pair: Gatsby.js 1.x + Firebase 4.x
Build and run the Docker container on the master branch.
But for a 100% clean test, also remove any old Docker containers and images:
```bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker build -t firebase-works . && docker run firebase-works
```

### Unsuccessful pair: Gatsby.js 1.x + Firebase 5.x
*Switch to the `unsuccessful` branch*
```bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker build -t firebase-fail . && docker run firebase-fail
```