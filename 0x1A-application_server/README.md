# 0x1A-application_server

Tasks
0. Set up development with Python
mandatory
Let’s serve what you built for AirBnB clone v2 - Web framework on web-01. This task is an exercise in setting up your development environment, which is used for testing and debugging your code before deploying it to production.

Requirements:

Make sure that task #3 of your SSH project is completed for web-01. The checker will connect to your servers.
# Application Server Setup

This repository contains the setup instructions for configuring an application server using Nginx and Gunicorn. The server will be used to host an AirBnB clone application.

## Installation

To get started, follow these steps:

1. Install the `net-tools` package on your server:
    ```
    sudo apt install -y net-tools
    ```

2. Clone the AirBnB_clone_v2 repository on your web-01 server.

3. Configure the file `web_flask/0-hello_route.py` to serve its content from the route `/airbnb-onepage/` on port 5000. Make sure the Flask application object is named `app`.

## Set up production with Gunicorn

To set up the production application server with Gunicorn, follow these steps:

1. Install Gunicorn and any other libraries required by your application.

2. Bind a Gunicorn instance to `localhost` listening on port 5000 with your application object as the entry point. Make sure nothing is listening on port 6000.

## Serve a page with Nginx

To serve the page from the route `/airbnb-onepage/` using Nginx, follow these steps:

1. Configure Nginx to serve the page both locally and on its public IP on port 80.

2. Proxy requests to the process listening on port 5000.

## Add a route with query parameters

To add a route with query parameters, follow these steps:

1. Configure Nginx to proxy requests to the route `/airbnb-dynamic/number_odd_or_even/(any integer)` to a Gunicorn instance listening on port 5001.

2. Make sure Nginx serves the page both locally and on its public IP on port 80.

## Serve the AirBnB clone API

To serve the AirBnB clone v3 - RESTful API on web-01, follow these steps:

1. Clone the AirBnB_clone_v3 repository.

2. Set up Nginx so that the route `/api/` points to a Gunicorn instance listening on port 5002.

3. Make sure Nginx serves the page both locally and on its public IP on port 80.

## Serve the AirBnB clone website

To serve the AirBnB clone - Web dynamic on web-01, follow these steps:

1. Clone the AirBnB_clone_v4 repository.

2. Configure the Gunicorn instance to serve content from `web_dynamic/2-hbnb.py` on port 5003.

3. Set up Nginx so that the route `/` points to the Gunicorn instance.

4. Configure Nginx to serve the static assets found in `web_dynamic/static/`.

Make sure to update the IP address in `web_dynamic/static/scripts/2-hbnb.js` to the correct value.

## Repository

- GitHub repository: [alx-system_engineering-devops](https://github.com/alx-system_engineering-devops)
- Directory: 0x1A-application_server
- Configuration files:
  - [2-app_server-nginx_config](./2-app_server-nginx_config)
  - [3-app_server-nginx_config](./3-app_server-nginx_config)
  - [4-app_server-nginx_config](./4-app_server-nginx_config)
  - [5-app_server-nginx_config](./5-app_server-nginx_config)
