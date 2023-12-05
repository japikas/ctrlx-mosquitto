# ctrlx-mosquitto
**Mosquito MQTT broker for ctrlX**

Snapcraft recipe for building Mosquitto MQTT broker for [ctrlX AUTOMATION](https://apps.boschrexroth.com/microsites/ctrlx-automation/en/).

Build tested in Ubuntu 22.04 at ARM host with ctrlX SDK v2.2. Snap tested in ctrlX CORE X3 with core22.

Mosquitto configuration is hard-coded inside the snap. Change your configuration in `mosquitto.conf` prior building. Configuration example is available in `snap/local/default_config.conf`.

**NB!** The example configuration in `mosquitto.conf` file is super permissive without any security for test use only. Apply your security settings prior deploying to production use.

Derived from Canonical's snapcraft for mosquitto.
