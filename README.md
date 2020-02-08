# easyrtc-docker
EasyRTC docker container with demo codes embedded.

## Usage

* Create docker-compose.yml

```yml
version: "3"

services:
  easyrtc:
    image: flaviostutz/easyrtc
    ports:
      - 8080:8080
```

* Run ```docker-compose up -d```

* Open browser at http://localhost:8080/

* Click on "EasyRTC Demo page" and explore EasyRTC applications

