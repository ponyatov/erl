# MQTT# MQTT

MQTT is a lightweight protocol designed as a publish/subscribe messaging transport for tiny data packets.

Connection and Python `paho` library usage was taken from here:
* https://www.thethingsnetwork.org/forum/t/transfer-data-with-mqtt-and-python/53886

TTN MQTT Server configuration and topic provided here:
* https://www.thethingsindustries.com/docs/integrations/mqtt/

**Upstream Traffic** goes from end devices via gateway to TTN is available thru this topics:

-   `v3/{application id}@{tenant id}/devices/{device id}/join`
-   `v3/{application id}@{tenant id}/devices/{device id}/up`
-   `v3/{application id}@{tenant id}/devices/{device id}/down/queued`
-   `v3/{application id}@{tenant id}/devices/{device id}/down/sent`
-   `v3/{application id}@{tenant id}/devices/{device id}/down/ack`
-   `v3/{application id}@{tenant id}/devices/{device id}/down/nack`
-   `v3/{application id}@{tenant id}/devices/{device id}/down/failed`
-   `v3/{application id}@{tenant id}/devices/{device id}/service/data`
-   `v3/{application id}@{tenant id}/devices/{device id}/location/solved`

