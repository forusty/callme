# callme
Just a simple docker app that uses IFTTT webhook service to call you

Idea came to me when my mum wanted me to remind her every 4 hours to take medicine.

Using cron and IFTTT, i had the cron job periodically call the webhook service on IFTTT which then triggers the VOIP service on IFTTT to call the phone.

# Cavet
Works only on android phones and the phone must have IFTTT installed. In theory this can work for any other VOIP service just need to tweak the crontab job.

# Building
```
docker build --build-arg --build-arg curl_param=<your curl param here> curl_url=<your curl url here> --rm --tag callme:1.0 .

eg.
docker build --build-arg --build-arg curl_param=-'X POST' curl_url=https://maker.ifttt.com/trigger/WakeMe/with/key/<ifttt web hook key> --rm --tag callme:1.0 .
```

# Running
Added --name callme to give the container a name for easier stopping, you can switch it to whatever you need
## TTY
To see the output running
```
docker run --name callme -t callme:1.0
```

## Fire and run in background (detached mode)
```
docker run --name callme -d callme:1.0
```

# Stopping
If in TTY mode, exit by pressing CTRL+C
If in detached mode, do nothing

```
docker stop callme
```
