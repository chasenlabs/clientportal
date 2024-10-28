# IBKR Client Portal API Gateway Image

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/chasenlabs/clientportal/main.yml)
[![GitHub License](https://img.shields.io/github/license/chasenlabs/clientportal)](LICENSE)
[![Docker](https://img.shields.io/badge/docker-openjdk-blue.svg)](Dockerfile)
[![IBKR](https://img.shields.io/badge/ibkr-clientportal-ffffff.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8yIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCiAgICAgeT0iMHB4IgogICAgIHZpZXdCb3g9IjAgMCA2OSA2OSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNjkgNjk7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojMjIyMjIyO30KCS5zdDF7ZmlsbDp1cmwoI1NWR0lEXzFfKTt9Cgkuc3Qye2ZpbGw6I0Q4MTIyMjt9Cjwvc3R5bGU+CjxnPgoJPGxpbmVhckdyYWRpZW50IGlkPSJTVkdJRF8xXyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIzODY0LjczNzUiIHkxPSI0OS43ODMiIHgyPSIzODkzLjE0NDUiIHkyPSI0OS43ODMiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoLTEgMCAwIDEgMzg5NC4yNDQ2IDApIj4KCTxzdG9wIG9mZnNldD0iMCIgc3R5bGU9InN0b3AtY29sb3I6I0Q4MTIyMiIvPgoJPHN0b3Agb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojOTYwQjFBIi8+Cgk8L2xpbmVhckdyYWRpZW50PgoJPHBvbHlnb24gY2xhc3M9InN0MSIgcG9pbnRzPSIyOS41LDY1LjQgMS4xLDY1LjQgMS4xLDM0LjEiLz4KCTxjaXJjbGUgY2xhc3M9InN0MiIgY3g9IjI1LjUiIGN5PSI0MS44IiByPSI4LjUiLz4KCTxwb2x5Z29uIGNsYXNzPSJzdDIiIHBvaW50cz0iMjkuNSwxLjIgMS4xLDM0LjEgMS4xLDY1LjQiLz4KPC9nPgo8L3N2Zz4K)](https://www.interactivebrokers.com/)

This repository contains the Dockerfile and configuration files to build an image for the IBKR Client Portal API Gateway. This is pure image without any modification.

Download the latest version of the gateway from the [IBKR Client Portal API Gateway](https://www.interactivebrokers.com/campus/ibkr-api-page/cpapi-v1/#gw-limitations) page.

> [!IMPORTANT]
> This project is not officially supported by `Interactive Brokers`, and the author is not responsible for any problems caused by the use of this project.

## Quick Start

- ephemeral container

```shell
docker run --rm -p 5000:5000 ghcr.io/chasenlabs/clientportal:latest # standard
docker run --rm -p 5000:5000 ghcr.io/chasenlabs/clientportal:latest-beat # beat
```

- persistent container

```shell
docker run -d --name clientportal -p 5000:5000 ghcr.io/chasenlabs/clientportal:latest # standard
docker run -d --name clientportal -p 5000:5000 ghcr.io/chasenlabs/clientportal:latest-beat # beat
```

open your browser and go to: [http://localhost:5000/](http://localhost:5000/), if running other computer replace `localhost` with the IP address of the computer running the gateway.

- get config file from container

```shell
docker exec -it clientportal cat /clientportal/root/conf.yaml
```

## Support

If you like this project, please consider supporting me for coffee ☕️

[![Buy Me A Coffee](https://img.shields.io/badge/buy%20me%20-coffee-%2322BC18.svg)](https://www.buymeacoffee.com/chasengao) [![get youtself link](https://img.shields.io/badge/get%20youtself%20link-buymeacoffee-orange.svg)](https://www.buymeacoffee.com/invite/chasengao)
