# ctrlx-mosquitto
**Mosquitto MQTT broker for ctrlX**

Snapcraft recipe for building Mosquitto MQTT broker for [ctrlX AUTOMATION](https://apps.boschrexroth.com/microsites/ctrlx-automation/en/). Currently (2023-12) builds for Mosquitto 2.0.18.

This is a message broker that supports version 5.0, 3.1.1, and 3.1 of the MQTT protocol. MQTT provides a method of carrying out messaging using a publish/subscribe model. It is lightweight, both in terms of bandwidth usage and ease of implementation. This makes it particularly useful at the edge of the network where a sensor or other simple device may be implemented using an arduino forexample.

Build tested in Ubuntu 22.04 at ARM host with ctrlX SDK v2.2. Snap tested in ctrlX CORE X3 with core22. More information about ctrlX SDK in github (https://github.com/boschrexroth/ctrlx-automation-sdk).

Mosquitto configuration is hard-coded inside the snap. Change your configuration in `mosquitto.conf` prior building. Configuration example is available in `snap/local/default_config.conf`.

**NB!** The example configuration in `mosquitto.conf` file is super permissive without any security for test use only. Apply your security settings prior deploying to production use.

Derived from [Eclipse Mosquitto](https://github.com/eclipse/mosquitto) github.

For any other information, please take a look at [Eclipse Mosquitto](https://mosquitto.org/) web site.
