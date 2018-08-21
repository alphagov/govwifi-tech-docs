# Phase 2: Set up managed end user devices

## General information

Technical teams should follow this implementation guide to enable their users to connect to GovWifi in government buildings.

This guidance explains how to help your end users to connect to GovWifi. Follow this guide to configure managed end user devices for secure wifi access to:

- the internet
- corporate networks using a virtual private network (VPN)

This guidance is not intended to inform your organisation’s buying decisions. Government Digital Service (GDS) does not recommend specific products.

On managed and unmanaged devices, end users must follow the terms and conditions for connecting to GovWifi.

## Meet GovWifi requirements

Your wifi installation must meet the GovWifi technical requirements.

You must configure:

- managed devices to automatically check that the correct certificate is presented by the network so users do not connect to fake networks
- WPA2-Enterprise (AES) encryption to ensure privacy
- anonymous identity to encrypt usernames
- You should automate this process by deploying profiles to managed devices. End users who set up their own devices must compare wireless certificates to the information they receive on sign up.

## Deploy GovWifi profiles to managed devices remotely

You should deploy profiles to your managed devices for automatic certificate checking. Use mobile device management solutions across multiple platforms, or operating system specific mechanisms such as Windows Group Policy or Apple Profile Manager.

## Get the XML profile for Windows

Copy and paste this XML file to a network location available to users. Devices with this profile installed will automatically check the certificate. The user just needs to enter their details once they have signed up to the service.

## Deploy XML profile to managed devices

Add the following to your users’ login script:

netsh wlan add profile filename="govwifi.xml" user=all

Replace the filename with the full path to the profile.

Read about Active Directory Group Policy and [how to create certificate profiles in configuration manager](https://docs.microsoft.com/en-us/previous-versions/system-center/system-center-2012-R2/dn270541(v=technet.10)).

## Prioritise GovWifi profile Default behaviour on operating systems

GovWifi must be the highest priority service set identifier (SSID) in your organisation, except for SSIDs that provide access to privileged networks using device certificates.

Add the following to your users’ login script (you may need to change the interface name for your environment):

netsh wlan set profileorder name="GovWifi" interface="Wi-Fi" priority=1


### Default behaviour on operating systems

The table below shows the default behaviour when connecting to GovWifi on different operating systems.

[IMAGE HERE]

