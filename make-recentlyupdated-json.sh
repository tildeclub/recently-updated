#!/bin/bash
/usr/share/nginx/bin/findmod-json.sh > /usr/share/nginx/html/tilde.24h.json.tmp
ln -f /usr/share/nginx/html/tilde.24h.json.tmp /usr/share/nginx/html/tilde.24h.json
rm /usr/share/nginx/html/tilde.24h.json.tmp
