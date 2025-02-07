# azdevops

# My Dockerized Applications

This repository contains Docker configurations for two applications:

- **Flask Application:** A Python-based web application.
- **Node.js Application:** A JavaScript-based web application.

## Table of Contents

1. [Flask Application](#flask-application)
2. [Node.js Application](#nodejs-application)

**Steps to Run Flask App**

- docker build -t my-flask-app
- docker run -d -p 5002:5000 myflask-app

**Steps to Run Node App**
- docker build -t my-node-app .
- docker run -p 3000:3000 my-node-app
