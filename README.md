# gatsby-and-firebase

This is a test to illustrate how Firebase 5.x cannot be installed with Gatsby.js 1.x.

## Run

### Successful: Gatsby.js 1.x + Firebase 4.x
Build and run the Docker container on the master branch.
But for a 100% clean test, also remove any old Docker containers and images:
```bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker build -t firebase-works . && docker run firebase-works
```

### Unsuccessful: Gatsby.js 1.x + Firebase 5.x
Switch to the `unsuccessful` branch and rerun:
```bash
git checkout unsuccessful
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker build -t firebase-fail . && docker run firebase-fail
```
After running, you will see errors similar to these:

![https://www.dropbox.com/s/wcnozoev2ewgtm8/Screenshot%202018-05-30%2023.25.53.png](https://www.dropbox.com/s/wcnozoev2ewgtm8/Screenshot%202018-05-30%2023.25.53.png)