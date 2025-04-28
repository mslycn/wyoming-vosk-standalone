# Wyoming Vosk Standalone
A standalone container for vosk using the wyoming protocol. Inspired by [this hass.io addon](https://github.com/rhasspy/hassio-addons/tree/master/vosk).

# Prerequisites
* docker
* docker compose (or another way of starting the container)

# Usage
* clone the repo
* change into the repo: `cd wyoming-vosk-standalone`
* build the container: `bash build.sh`
* optional: adapt `docker-compose.yaml` to your use-case
* run the container: `docker compose up`

A directory called `dirs` will be created in the current folder. Inside that folder are the volumes specified in `docker-compose.yaml`

 Supports amd64 Architecture only
~~~
docker pull ghcr.io/mslycn/wyoming-vosk-standalone:1.5.0
~~~

# Using it in Home Assistant
* Settings->Integrations->Add Integration: Add the wyoming protocol and add the IP of wherever you are running `Wyoming Vosk Standalone`. The port is `10300`.

# Using a specific model
Other Vosk-Models can be found [here](https://alphacephei.com/vosk/models). Let's say you want to use `vosk-model-de-0.21`, a german model (de)
* `cd` into the models directory: `cd dirs/models`
* Download the model: `wget https://alphacephei.com/vosk/models/vosk-model-de-0.21.zip`
* Unzip: `unzip vosk-model-de-0.21.zip`
* vosk uses the foldername to determine the language: `mv vosk-model-de-0.21 de`
* optional: delete the zip: `rm unzip vosk-model-de-0.21.zip`
# Note
Pull requests and ideas/feature requests are always welcome!
