# Set up GovWifi

The GovWifi admin platform lets you manage your GovWifi environment by allowing you to:

- Find the connection details for the GovWifi RADIUS servers
- Add the IP addresses of your authenticators
- Manage your team members and their permissions
- Find key performance metrics
- Get help and support

## Step 1 - Create a new wifi installation

**Get an account**

Your department, agency or team must sign up for a GovWifi admin account on the [GovWifi admin platform](https://admin.wifi.service.gov.uk/users/sign_up).

If you're having problems signing up for an account, [contact us](https://admin.wifi.service.gov.uk/help).

**Establish your public IP addresses**

Remote Authentication Dial-In User Service (RADIUS) traffic usually originates from the management interface of your wifi controller. Find out if you have an existing network address translation (NAT) rule, or whether you need a new one.

If you have multiple internet connections it may be possible for traffic to originate from a different IP address in the event of a primary link failure. Make sure you add all your IP addresses if you have multiple internet connections.

You can manage your IP addresses in the [GovWifi admin platform](https://admin.wifi.service.gov.uk/).

**Configure your infrastructure**

Your secret key, established IP addresses and more can be managed in the [GovWifi admin platform](https://admin.wifi.service.gov.uk/).

1.  Create a firewall rule to allow traffic on UDP ports 1812 and 1813 to reach the RADIUS IP addresses assigned to you.

2.  Create a NAT rule if one doesn’t already exist so your wifi controller (or access points for cloud-managed devices) can reach the internet via the IP addresses you specified when you registered your site.

3.  Create a service set identifier (SSID) with:

- name: GovWifi
- type: WPA2-Enterprise (AES encryption)
- inner encryption: MsChapV2

4.  Configure your Network Access Server (access point) to ensure username privacy.

5.  If permitted by your infrastructure vendor, set the Network Access Identifier (NAI) for your outer tunnel to be anonymous. See [RFC 7542](https://tools.ietf.org/html/rfc7542) for full details of permitted NAI syntax

6.  Configure the RADIUS servers and secret key. Follow the instructions in the encrypted PDF you received when you registered your site.

## Step 2 - Set up managed end user devices

This explains how to help your end users to connect to GovWifi via managed devices. Follow this guide to configure managed end user devices for secure wifi access to:

- the internet
- corporate networks using a virtual private network (VPN)

End users must follow the terms and conditions for connecting to GovWifi with managed and unmanaged devices.

**Meet GovWifi requirements**

Your wifi installation must meet the GovWifi technical requirements.

You must configure:

- managed devices to automatically check that the correct certificate is presented by the network so users do not connect to fake networks
- WPA2-Enterprise (AES) encryption to ensure privacy
- anonymous identity to encrypt usernames

You should automate this process by deploying profiles to managed devices. End users who set up their own devices must compare wireless certificates to the information they receive on sign up.

**Deploy GovWifi profiles to managed devices remotely**

You should deploy profiles to your managed devices for automatic certificate checking. Use mobile device management solutions across multiple platforms, or operating system specific mechanisms such as Windows Group Policy or Apple Profile Manager.

**Get the XML profile for Windows**

Copy and paste [this XML file](/assets/govwifi-profile.xml) to a network location available to users. Devices with this profile installed will automatically check the certificate. The user just needs to enter their details once they have signed up to the service.

**Deploy XML profile to managed devices**

Add the following to your users’ login script:

`netsh wlan add profile filename=“govwifi.xml” user=all`

Replace the filename with the full path to the profile.

Read about how to [create certificate profiles in configuration manager](<https://docs.microsoft.com/en-us/previous-versions/system-center/system-center-2012-R2/dn270541(v=technet.10)>).

**Prioritise GovWifi profile default behaviour on operating system**

GovWifi must be the highest priority service set identifier (SSID) in your organisation, except for SSIDs that provide access to privileged networks using device certificates.

Add the following to your users’ login script (you may need to change the interface name for your environment):

`netsh wlan set profileorder name=“GovWifi” interface=“Wi-Fi” priority=1`

## Step 3 - Roll out GovWifi

Once you’ve received approval to run GovWifi across your organisation, you can expand the service to cover all users and buildings.

Make sure your IT support team is aware of GovWifi and ready to respond to user queries.

You should advertise the service in the locations you’ll roll it out. Posters are available from the [admin platform](https://admin.wifi.service.gov.uk/setup_instructions).
