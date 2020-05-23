# callme
Just a simple docker app that uses IFTTT webhook service to call you

Idea came to me when my mum wanted me to remind her every 4 hours to take medicine.

Using cron and IFTTT, i had the cron job periodically call the webhook service on IFTTT which then triggers the VOIP service on IFTTT to call the phone.

# Cavet
Works only on android phones and the phone must have IFTTT installed. In theory this can work for any other VOIP service just need to tweak the crontab job.
