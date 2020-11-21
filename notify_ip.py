#!/usr/bin/python3

import requests
import time
import logging

token      = ''
headers    = {'Authorization': 'Bearer ' + token}
notify_url = 'https://notify-api.line.me/api/notify'
ip_url     = 'http://inet-ip.info/ip'

formatter = '%(asctime)s : %(message)s'
logging.basicConfig(filename='/tmp/notify_ip.log', format=formatter, level=logging.DEBUG)

def main():
    ip = ''

    while True:
        r = requests.get(ip_url)
        
        if ip != r.text:
            logging.info('ip changed {} -> {}'.format(ip, r.text))
            
            ip = r.text

            r = requests.post(
                notify_url,
                headers=headers,
                params={'message': ip}
            )

            r.raise_for_status()

        time.sleep(300)


if __name__ == '__main__':
    main()

