#!/bin/bash
/usr/share/nginx/bin/findmod.sh > /usr/share/nginx/html/tilde.24h.php.tmp
ln -f /usr/share/nginx/html/tilde.24h.php.tmp /usr/share/nginx/html/tilde.24h.php
rm /usr/share/nginx/html/tilde.24h.php.tmp
