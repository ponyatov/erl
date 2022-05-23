# TheThingsNetwork.com

https://www.thethingsnetwork.org/docs/applications/

[[IoT Application]] is both software and hardware system combined together to fulfill some single or multiple tasks.

registered applications available over the TTN Console:
https://eu1.cloud.thethings.network/console/applications

![[Pasted image 20220318145104.png]]

For using the API you need to have access key:
https://eu1.cloud.thethings.network/console/applications/pony/api-keys

**Application ID**

```py
## Application ID
ID = 'pony'
```

**Application Key**

```py
## Application Key
KEY = 'OE2V6KERXHNM74ZE2S3GWKW3X35GA5POCFLKZUQ'
```

**Application Rights** should be defined via the AppKey

- [ ] Delete application
- [x] View devices in application
- [ ] View device keys in application
- [ ] Create devices in application
- [ ] Edit device keys in application
- [x] View application information
- [ ] Link as Application to a Network Server for traffic exchange, i.e. read uplink and write downlink
- [ ] View and edit application API keys
- [ ] Edit basic application settings
- [ ] View and edit application collaborators
- [ ] View and edit application packages and associations
- [x] Write downlink application traffic
- [x] Read application traffic (uplink and downlink)
- [ ] Write uplink application traffic

## Connection to TTN
An application can connect to The Things Network in different ways:
1. **API**: application uses standard protocol libraries to connect directly
	* Data API
		* [[MQTT]]
		* AMQP
	* Application Manager API
		* gRPC
		* [[Application Manager API|HTTP]]
2. **SDK**: libraries provided for some programming languages
	*  Python: https://www.thethingsnetwork.org/docs/applications/python/
* **Integrations**
	* with side platforms

## Python `ttn` library

https://www.thethingsnetwork.org/docs/applications/python/

