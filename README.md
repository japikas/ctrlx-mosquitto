# ctrlx-mosquitto
Mosquito MQTT broker for ctrlX

Snapcraft recipe for building Mosquitto MQTT broker for [ctrlX AUTOMATION](https://apps.boschrexroth.com/microsites/ctrlx-automation/en/).

Build tested with Ubuntu 22.04 in ARM host and ctrlX SDK v2.2. Snap tested in ctrlX CORE X3 with core22.

Mosquitto configuration is hard-coded inside the snap. Change your configuration in `mosquitto.conf` prior nuilding. Configuration example is available in `snap/local/default_config.conf`.

**NB!** The default configuration of `mosquitto.conf` file is super permissive without any security, for test use only. Change your security settings prior deploying to production use.
