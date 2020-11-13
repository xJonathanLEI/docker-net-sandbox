# Docker Network Sandbox Container

This repository contains files for building and running a Docker container to isolate other containers from the rest of your network, while optionally exposing some ports.

## Why?

Imagine finding a Docker image online that seems to do exactly what you need, but you're kind of worried that it contains malicious code.

To minimize the possible damage, you might disable networking for this container completely:

    $ docker run --net none potentially_malicious_image

While this does work, it also breaks containers that listen for connections. So what if the image you're after is a server that listens for connections?

This is exactly what `net-sandbox` tries to solve. Simply run the sandbox container first:

    $ docker run --cap-add NET_ADMIN --name sandbox xjonathanlei/net-sandbox

Then run the suspicious container inside the sandboxed network:

    $ docker run --net container:sandbox potentially_malicious_image

## How does it Work?

It's just a few simple [iptables](https://en.wikipedia.org/wiki/Iptables) rules.

## Docker Hub

> TODO: add link to Docker Hub

## What if the Docker Hub Image is Malicious?

Just build the image yourself then.

## LICENSE

MIT
