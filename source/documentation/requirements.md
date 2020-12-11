# GovWifi requirements

Before you offer GovWifi, there are some requirements and recommendations you should follow when setting up the service.


## Requirements for GovWifi

Before you start setting up GovWifi, you must make sure your:

- setup allows for a suitable amount of internet and uplink bandwidth for the anticipated number of users
- wifi infrastructure uses WPA2-Enterprise (AES) encryption - WPA2 certification is mandatory for all new devices bearing the Wi-Fi trademark
- wifi access controllers can point to one or more Remote Authentication Dial-In User Service (RADIUS) servers
- network uses one or more static IP addresses for connecting to the RADIUS servers
- internet firewall allows RADIUS servers to connect to the GovWifi authentication servers - port 1812/User Datagram Protocol (UDP) for authentication requests
- network allows for authenticated users to access all TCP/UDP ports for visitors who need to connect to virtual private networks (VPN) for work purposes
- setup configures anonymous identity to encrypt usernames

We can help you with network infrastructure issues but you must make sure your IT team is available to support requests from your users.


## Recommendations when setting up GovWifi

While you are not required to follow these points to set up GovWifi, they are recommended to provide a good quality of service. You should:

- set your wifi access controllers to point to 2 or more RADIUS servers
- set your network to use client isolation to prevent compromised devices attacking other devices
- provide a basic content filtering service such as a webpage filter to all GovWifi users - an appropriate solution is
to [use NCSC’s Protective DNS for preventing access to malicious domains](https://www.ncsc.gov.uk/information/pdns)

## Hardware recommendations for GovWifi

GovWifi is set up to work with your existing hardware. However, if you choose to change your hardware, follow the recommendations.

On your network infrastructure:

- upgrade bandwidth using general purpose internet services
- use transparent caching technologies to regularly cache your existing state - [learn more about transparent caching](https://www.pcmag.com/encyclopedia/term/53119/transparent-cache)
- use high power class 4 switches to power the access points and allow easier upgrade to future wireless technologies -
[learn more about high power class 4 switches](https://documentation.meraki.com/MS/Other_Topics/IEEE_802.3af_\(PoE\)_and_IEEE_802.3at_\(PoE_\)_Support_on_Cisco_Meraki_MS_Switches)

If you need voice support, [use a voice program such as Voice Enterprise](http://www.wi-fi.org/discover-wi-fi/wi-fi-certified-voice-programs).

## Wireless access point configuration

Deploy centrally-managed hardware, ideally with at least 5 GHz frequency band and 802.11ac support.

By using a 5GHz band, you:

- allow for a larger number of available channels
- can [enable 'band steering' to regulate probe requests to clients](https://www.broadbandbuyer.com/features/3254-what-does-wifi-band-steering-mean/)
- support smoother roaming for devices on the move using fast roaming

Configure your wireless access points (APs) to:

- use a high basic data rate as your minimum
- disable lower data rates to encourage clients to roam to APs with stronger signals and increase capacity for all clients
- [support IEEE 802.11ac wave 2 standard for higher throughput](https://standards.ieee.org/findstds/standard/802.11ac-2013.html) and multiple input multiple output (MIMO)
- have maximum 4 service set identifiers (SSIDs) per band per site and selectively disable SSIDs where they are not required - each SSID uses up bandwidth with beaconing, probe requests and probe responses
- manage channel width by designing 802.11n/ac using 40 MHz width channels

You may enable wider channels (channel bonding) for 802.11ac, but you should configure them to fall back to a non-overlapping channel.

Use automatic channel selection features in enterprise wifi management systems rather than manual configuration.
