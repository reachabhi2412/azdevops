# azdevops

# My Dockerized Applications

This repository contains Docker configurations for two applications:

- **Flask Application:** A Python-based web application.
- **Node.js Application:** A JavaScript-based web application.

## Table of Contents

1. [Flask Application](#flask-application)
2. [Node.js Application](#nodejs-application)

**Steps to Run Flask App**
- *Navigate to [pydocker](https://github.com/reachabhi2412/azdevops/tree/main/pydocker) folder and run below commands*
- docker build -t my-flask-app .
- docker run -d -p 5000:5000 myflask-app
- Access your app from browser at [http://localhost:5000](url)

**Steps to Run Node App**
- *Navigate to [nodedocker](https://github.com/reachabhi2412/azdevops/tree/main/pydocker) folder and run below commands*
- docker build -t my-node-app .
- docker run -p 3000:3000 my-node-app
- Access your app from browser at [http://localhost:3000](url)
