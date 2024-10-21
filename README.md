### Bluetool
A simple Python API for Bluetooth D-Bus calls. Allows easy pairing, connecting and scanning.

#### Why fork
I want to add error handelling and make this tool better.

#### Dependencies

- `python-dbus`

The package was tested with **Python 3.12**

#### Installation

```
git clone https://github.com/newor0599/bluetool
make install
```

#### Usage

- Bluetooth:
	
	list: `[{"name": Name, "mac_address": MAC-address}, ... ]`

	Methods of class Bluetooth:
	- `start_scanning(timeout)`: `scan` in background
	- `scan(timeout)`
	- `get_devices_to_pair()`, returns list
	- `get_available_devices()`, returns list
	- `get_paired_devices()`, returns list
	- `get_connected_devices()`, returns list
	- `make_discoverable()`, returns bool
	- `start_pairing(address)`: `pair` in background
	- `pair(address)`, returns bool
	- `connect(address)`, returns bool
	- `disconnect(address)`, returns bool
	- `trust(address)`, returns bool
	- `remove(address)`, returns bool
	- `set_adapter_property(prop, value)`, returns bool
	- `get_adapter_property(prop)`
	- `set_device_property(address, prop, value)`, returns bool
	- `get_device_property(address, prop)`

### About the project

This package was written by [Aleksandr Aleksandrov](https://github.com/AD-Aleksandrov) working at [Emlid](https://emlid.com/).

The bluetool was originally written for the [Emlid Reach RTK receiver](https://emlid.com/reach/), but they decided to open source it, as there is no easy Python API for BT pairing/connecting. Feel free to add issues and submit pull requests.

### Additional comments
This project was modified by rTomas for RGB-Pi use in Raspberry Pi removing all the unnecessary server and agent parts
