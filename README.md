# Apartment association app

App to view monthly apartment expenses (water fees, electricity network fees, electricity fees),
usage and add water readings

## Authentication

- OAuth2 with Google. Allowed email addresses are based on Google Drive share settings
- Unauthenticated access - can only view data. Cannot add water readings

## Data management

### Readable data (readings, expenses, payment data)

- Data is received from static JSON files (original data is stored in monthly google sheets - google
  app script generates json file once monthly expenses are processed). JSON files have monthly
  readings, expenses and payment data. Every month new JSON file is published (by 10th date)
- App makes request based on current date. If app received 404 for current month then that means
  data is not yet published and app defaults to previous month data

### Writable data (water readings)

- Preconditions - user has selected their apartment number and month (default selected is previous
  month)
- Water readings are stored in Google Sheets. App makes request to Google Sheets API to add water
  readings
- Water readings can be changed by user until 7th date of the next month. After that this month's
  readings are locked

## User interface

### Login

- User can login with Google account
- User can view data without login but cannot add water readings

### Select apartment

- User can select their apartment number (first time login/usage)

### Home

- User can view last published month expenses, water readings and payment data for their apartment
- User can copy payment data easily to their bank's payment form (separate detailed form once
  clicked on each expense payment details)

### Add water readings

- User can add water readings for their apartment (if authorized)
- User can take photos of water meters and app will read the values from photos (OCR)
- User has to confirm or edit the values read from photos
- User can manually enter the value
- User can change the value until 7th date of the next month

### History

- User can view yearly expenses for their apartment. Bar chart shows yearly expense by expense
  category (water, electricity network, electricity)

### Settings

- User can change their apartment number
- User can change light/dark mode theme setting
- User can turn on/off push notifications

## Additional functionality

- Push notifications to remind water reading adding
- Push notifications to remind payment due date