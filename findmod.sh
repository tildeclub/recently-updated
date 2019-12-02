#!/bin/bash
cat /usr/share/nginx/html/header1.php
find /home/*/public_html -regex "/home/\_?[0-9a-zA-Z]*/public_html/index.html" -type f -name "index.html" -mtime 0 -printf '%T@ %p %TD %Tr %TY-%Tm-%TdT%TTZ\n' 2> /dev/null | sort -r | perl -CSD -pe 's|([0-9\.]+) /home/([\p{L}\p{N}_]*?)/public_html/index.html (.*) (.*)|<li><a class="homepage-link" href="http://tilde.club/~$2">$2</a> <time datetime="$4">$3</time></li>|'
cat /usr/share/nginx/html/footer.php
