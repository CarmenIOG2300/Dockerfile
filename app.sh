#!/bin/bash

service nginx start

HTML_FILE="/var/www/html/*.html"

if [ ! -f "$HTML_FILE" ]; then
    echo "<html><body><h1>Welcome to nginx</h1></body></html>" > "$HTML_FILE"
fi

sed -i 's/Welcome to nginx!/Welcome to the Carmen page/g' /var/www/html/*.html

sed -i 's/nginx/nginx (pronounced as EngineX)/g' /var/www/html/*.html

service nginx restart


