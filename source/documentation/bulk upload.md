# Bulk upload
 
## Using Excel

1. Create a list of new locations to be added to your organisation in a spreadsheet, using this format:


Postal Address | Postcode | IP_ADDRESS | IP_ADDRESS | etc


2. Save the spreadsheet as a CSV and change the 'delimiter' from a comma to ‘tabs’.


3. Browse to 'Locations' in GovWifi admin and select 'Upload Locations'.


4. Select your saved CSV file and then 'Upload'.


5. You will now see a summary of the uploaded data and any errors / problems with the upload. Select 'Save' to add the uploaded data to your organisation.


6. If any errors are generated, amend the data in the spreadsheet and follow steps 1 - 5 to re-upload.

###	Common errors

An item (postcode or IP) is invalid, for example, is not an IP address, or UK postcode, or is from a private IP ranges.

The data is already in the database. IP addresses must be unique across all organisations - no organisation can have 2 locations with the same postal address.

There is a disallowed duplicate within the uploaded data itself (same postal address more than once, same IP more than once).

### Download radius keys

Admin users - including those not using bulk upload - can download all RADIUS keys for their organisation by selecting the 'Download Keys' button. The keys are downloaded in tab delimited CSV (same as the upload format) and can be opened in Excel.

