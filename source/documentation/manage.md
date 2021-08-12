# Manage GovWifi

This guidance explains how to manage GovWifi for your organisation once you've installed it.


## Withdraw legacy services

After you’ve successfully deployed GovWifi, you can remove less secure guest wifi services.

## Create a plan to deal with a GovWifi outage 

If GovWifi is critical for your organisation, create a business continuity plan so you can still provide internet access in your buildings if there’s a problem with GovWifi. 

We should be able to resolve most incidents within a few hours. However, in the unlikely event that there’s a catastrophic failure of our infrastructure, it could take up to 2 weeks to restore the service.

Consult with your risk assessment and technology teams on your business continuity plan. 

### Set up a backup SSID

We recommend you have a backup guest SSID that people in your buildings can use if there’s a long GovWifi outage. 

When setting up your backup guest SSID: 
- make sure it meets our [security standards](https://docs.wifi.service.gov.uk/requirements/#security), and points users to any terms of use your organisation has 
- do not use ‘GovWifi’ as the SSID, or you might have potential conflicts when GovWifi is working again 
- make sure you can easily disable it when GovWifi is working again 

Run regular tests of the SSID to make sure you can quickly switch to it if required.

### Document how to update the GovWifi configuration 

If GovWifi is going to be down for a long time, we might ask you to update your GovWifi configuration with temporary IP addresses for our RADIUS servers. 

Make sure you’ve documented how to update the GovWifi configuration at your site so you can do this if necessary.

### Plan how you'll tell your users 

Plan how you’ll tell your users to use the backup SSID. Make sure your users on managed devices will be able to connect to the backup SSIDs created by each building if they’re roaming.

Share the relevant parts of your business continuity plan with your user support team so they know how to help users.

## View and update your site configuration

You can [view and update your configuration in GovWifi admin](https://admin.wifi.service.gov.uk/).

## Manage acceptable use

You’re responsible for setting your own acceptable use policy and managing filtering and firewall controls.

There are a couple of things you can do if you have concerns about a user on your network - for example, if they’re breaching your acceptable use policy or have malware on their device.

### Request a user’s contact details

You can ask us for the contact details of users if you need to get in touch with them. We’ll have either their email address or phone number, depending how they signed up to GovWifi.

For us to provide this information:

- the request must come from a person who is a team member on the organisation’s GovWifi admin account, and we may get in touch to check that the request definitely came from that person
- your organisation must have signed the [memorandum of understanding (MOU)](https://admin.wifi.service.gov.uk/mou) (sign in required) which sets out the terms that we can share personal data under

### Block users

If necessary, you can stop someone using your network by blocking their device’s MAC address.

Bear in mind that this does not stop that user from connecting to your network on a different device.

In serious cases, we can block someone from using GovWifi in any building. [Contact us](https://admin.wifi.service.gov.uk/help) if you think this is necessary.


## Monitor and log traffic

You’re responsible for traffic monitoring and logging.

You can view [logs for specific users](https://admin.wifi.service.gov.uk/logs/search/new) (sign in required). This can help you troubleshoot problems and help you investigate malicious use.  


## Stop using GovWifi

If your organisation wants to stop using GovWifi, [contact us](https://admin.wifi.service.gov.uk/help).

<!-- **Administration Platform**
**Add locations**
**Change admins**
**Request information** -->
