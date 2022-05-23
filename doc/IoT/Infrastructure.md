# IoT System IoT/Infrastructure
![](iot.png)

## LoRa node
Any hardware equipped with LoRa modem module can be connected to a long-range and low-power network.

## Gateway
- converts radio LoRa-modulated packages into TCP/IP packages and send to IoT platform, and vice versa
- managed by remote IoT platform (frequency plan can be changed remotely)
- LoRaWAN Over-the-Air firmware updates [1] for gateway and nodes

## IoT platform (TheThingsNetwork.com)

- holds data message history
- nodes and gateway provisioning (management)
- miscellaneous API including **MQTT pub/sub service**
- **control console** provides some user interface for manual managing of connected gateways and node devices

## Applications

- implements goals of installed IoT network, depends on tasks should be solved
- number of applications not limited
- every IoT service user can have
	- some interface on his own mobile phone, 
	- login via public Web service, and 
	- run its own Web interface instance locally on user computer

## Data media layers

* *node <-> gateway* interconnection
	* uses its own wireless radio transfer channel with chirp modulation and encoded digital channel
	* LPWAN radioband technology provided very energy-efficient long-range communications of very short data packages (50-250 bytes)

[1] *Nicolas Sornin*<br>[**LoRaWAN®: Firmware Updates Over-the-Air**](https://lora-developers.semtech.com/uploads/documents/files/LoRaWAN_Firmware_Updates_OTA_NSornin_Final.pdf)<br>Semtech standards library
[2] *Md. Noor-A-Rahim, M. Omar Khyam, Apel Mahmud, Xinde Li, Dirk Pesch, and H. Vincent Poor*<br>**Hybrid Chirp Signal Design for Improved Long-Range (LoRa) Communications**<br>https://www.mdpi.com/2624-6120/3/1/1/pdf
