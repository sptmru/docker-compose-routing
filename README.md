# Docker Compose Routing

## Description

This code is useful when you need to route requests from different Docker containers to different host network interfaces.

## Usage

Start Docker Compose (now it starts with a simple Express.js server inside, you would probably want to replace it), and then check `routing.sh` and add routes and iptables rules according to your network configuration.