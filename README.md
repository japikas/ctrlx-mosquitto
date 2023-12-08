# ctrlx-mosquitto
### Mosquitto MQTT broker for ctrlX

Snapcraft recipe for building Mosquitto MQTT broker for [ctrlX AUTOMATION](https://apps.boschrexroth.com/microsites/ctrlx-automation/en/).

This is a message broker that supports version 5.0, 3.1.1, and 3.1 of the MQTT protocol. MQTT provides a method of carrying out messaging using a publish/subscribe model. It is lightweight, both in terms of bandwidth usage and ease of implementation. This makes it particularly useful at the edge of the network where a sensor or other simple device may be implemented using an arduino forexample.

Mosquitto 2.0.18 compilation tested in Ubuntu 22.04 at ARM host with ctrlX SDK v2.2. Snap tested in ctrlX CORE X3 with core22. More information about ctrlX SDK in github [https://github.com/boschrexroth/ctrlx-automation-sdk](https://github.com/boschrexroth/ctrlx-automation-sdk)

### Building

#### Debendencies

T.B.D.

#### Snapcraft

[ctrlX OS](https://apps.boschrexroth.com/microsites/ctrlx-automation/en/portfolio/ctrlx-os/) is build a top of [Ubuntu Core](https://ubuntu.com/core) and uses snap packages for distribution of applications.
Snaps are build with [snapcraft](https://ubuntu.com/core/docs/snaps-in-ubuntu-core) tool in [ctrlX WORKS](https://apps.boschrexroth.com/microsites/ctrlx-automation/en/portfolio/ctrlx-works/) development environment, or in Ubuntu host with [ctrlX SDK](https://github.com/boschrexroth/ctrlx-automation-sdk) installed. Use of virtual machine is recommended as snapcraft may mess up with the host system. The snap is build as follows:

`snapcraft --destructive-mode`

### Configuration

After installing the snap package in ctrlX target, the configuration file appears in the App Persistent Configuration database, provided by the Rexroth Solutions App. The file can be accessed in Web Dashboard: Home -> Manage app data -> Mosquitto MQTT. There is no editor available in the web UI, but configuration files can be accessed and edited with WebDav in given url:

`https://<device_address>/solutions/webdav/appdata/mosquitto/`

WebDav can be mounted as remote file system for easy of access, or accessed with separate applications like WinSCP, as explained [here](https://boschrexroth.github.io/ctrlx-automation-sdk/persistdata.html#accessing-configuration-files-per-webdav). With web browser, the WebDav resource is accessible in read-only mode.

> [!TIP]
> Instructions how to mount WebDav resource as filesystem in [Linux](https://espace.cern.ch/winservices-help/DFS/WebDAV/Pages/UsingDavfsOnOlderLinux.aspx), [Mac](https://espace.cern.ch/winservices-help/DFS/WebDAV/Pages/UsingWebDAVFromMacOSX.aspx), [Windows](https://espace.cern.ch/winservices-help/DFS/WebDAV/Pages/UsingWebDAVFromWindows.aspx).

> [!IMPORTANT]
> Mosquitto does not reload configurations changes automatically, but only when starting. Thus, changes must be applied by application Disable - Enable cycle, or reboot of the system.

Default configuration allows access from local host only. For test and development use, external access can be enabled like this:

`listener 1883 0.0.0.0`

`allow_anonymous true`

> [!WARNING]
> This example configuration provides no security and should not be applied in production use.


The project is derived from Eclipse Mosquitto github [https://github.com/eclipse/mosquitto](https://github.com/eclipse/mosquitto)

For any other information, please take a look at Eclipse Mosquitto web site [https://mosquitto.org/](https://mosquitto.org/)
