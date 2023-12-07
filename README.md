# ctrlx-mosquitto
**Mosquitto MQTT broker for ctrlX**

Snapcraft recipe for building Mosquitto MQTT broker for [ctrlX AUTOMATION](https://apps.boschrexroth.com/microsites/ctrlx-automation/en/).

This is a message broker that supports version 5.0, 3.1.1, and 3.1 of the MQTT protocol. MQTT provides a method of carrying out messaging using a publish/subscribe model. It is lightweight, both in terms of bandwidth usage and ease of implementation. This makes it particularly useful at the edge of the network where a sensor or other simple device may be implemented using an arduino forexample.

Mosquitto 2.0.18 build tested in Ubuntu 22.04 at ARM host with ctrlX SDK v2.2. Snap tested in ctrlX CORE X3 with core22. More information about ctrlX SDK in github (https://github.com/boschrexroth/ctrlx-automation-sdk)

Configuration file is stored in the ctrlX database for App Persistent Configuration, provided by the Solutions App. The file can be access in Web Dashboard: Home -> Manage app data -> Mosquitto MQTT. There is no editor available in the web UI, but configuration files can be accessed with WebDav.

https://<address>/solutions/webdav/appdata/mosquitto/mosquitto.conf

WebDav can be mounted as remote file system, or accessed with separate applications like WinSCP.

Default configuration allows access from local host only. For test use, external access can be enabled like this:

> listener 1883 0.0.0.0

> allow_anonymous true

**NB!** This example configuration provides no security and should not be applied in production use.

Derived from Eclipse Mosquitto github (https://github.com/eclipse/mosquitto)

For any other information, please take a look at Eclipse Mosquitto web site (https://mosquitto.org/)
