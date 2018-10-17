# Requirements

To make sure GovWifi provides a consistent user experience across all locations, your organisation’s wifi must:

- meet the administrator requirements
- work towards the hardware recommendations

## Administrator requirements

1. You must have an IT support team available to answer GovWifi support queries.
2. Your wifi access controllers must be able to point to one or more RADIUS servers.
3. Your wifi infrastructure must use WPA2-Enterprise (AES) encryption.
4. Your network must have one or more internet connections with static IP addresses.
5. Your internet firewall must allow RADIUS to connect to the GovWifi authentication servers - port 1812/User Datagram Protocol (UDP) for authentication requests and optionally 1813/UDP for accounting requests.
6. Your network must use client isolation to prevent rogue devices from attacking legitimate users.
7. You must provide authenticated users access to all TCP/UDP ports to cater for visitors who need to connect to legitimate virtual private network (VPN) services.
8. You must provide an internet connection with a basic content filtering service to all wifi users. The [UK public sector DNS](https://www.gov.uk/guidance/introducing-the-uk-public-sector-dns) is an appropriate solution.
9. You must provide a suitable amount of internet bandwidth for the anticipated number of users. Plan for 50% of the access point (AP) vendor’s recommended client device count per AP radio. Stay well under the vendor’s published maximum figure (for example, one access point per block of 20 users, located in the middle of each group).
10. You must ensure there’s enough uplink bandwidth from APs to the building switch infrastructure to allow full use of the internet bandwidth by all users.
11. Configure your managed devices to connect to GovWifi.

## Hardware recommendations

GovWifi is intended to work with your existing hardware. However, if you choose to refresh your hardware, follow the recommendations below.

On your network infrastructure:

- upgrade bandwidth using commodity internet services
- use transparent caching technologies to minimise the impact of software updates
- use 802.11at - type 2 capable switches to power the access points and allow easier upgrade to future wireless technologies
- use Wi-Fi [Voice Enterprise](http://www.wi-fi.org/discover-wi-fi/wi-fi-certified-voice-programs) or equivalent if voice support is required

**Wireless AP configuration**

Deploy centrally managed (AP) hardware, each with at least 5 GHz frequency band and 802.11ac support. Configure your wireless APs to:

- use a high minimum basic data rate
- disable lower data rates to encourage clients to roam to APs with stronger signals and increase capacity for all clients
- support [ac wave 2](https://standards.ieee.org/findstds/standard/802.11ac-2013.html) and multi-user multiple input multiple output (MIMO)
- have no more than 4 SSIDs per band per site; each SSID will use up some bandwidth with beaconing, probe requests and probe responses
- selectively disable SSIDs at places and frequencies where they aren’t required
- selectively disable 2.4 GHz radios on APs in large open plan areas with more than 3 APs to reduce interference between APs on the same frequency; 5 GHz has considerably more channels and is better at providing non-contending overlapped coverage
- manage channel width by designing 802.11n/ac using 40 MHz width channels; you may enable wider channels (channel bonding) on a best effort basis for 802.11ac though you should configure them to fall back to a non-overlapping channel
- manage channel selection (radio frequency) and reduce power if necessary to minimise contention and overlapping; use the automatic channel selection features in enterprise wifi management systems rather than manual configuration

Use common standards and protocols on your wireless APs to ensure you:

- disable low-bandwidth wifi, like 802.11a and 802.11g protocols on the 5 GHz band, which should only support 802.11n, 802.11ac or faster; confine legacy clients to the 2.4 GHz band
- enable dynamic frequency selection (DFS) or 802.11h for 5 GHz band, which provides for a larger number of channels to be made available; with DFS enabled, sudden changes may occur in response to detection of radar signals by wifi APs
- enable ‘band steering’ which works by regulating probe responses to clients and making 5 GHz channels appear more attractive to clients by delaying probe responses to clients on 2.4 GHz
- support smoother roaming for devices on the move using 802.11r

**WPA2 Enterprise with AES encryption**

WPA2 replaced WPA. WPA2, which requires testing and certification by the Wi-Fi Alliance, implements the mandatory elements of IEEE 802.11i. In particular, it includes mandatory support for CCMP, an AES-based encryption mode with strong security. Certification began in September 2004. WPA2 certification is mandatory for all new devices to bear the Wi-Fi trademark.

**Security**

You’re responsible for configuring content filtering, firewall controls according to your local policies.

Misuse of GovWifi according to the acceptable use policy should be dealt with using your local access controls to remove access to that device. We do not provide a centralised acceptable usage policy across all GovWifi, instead each organisation should be configuring their own.
