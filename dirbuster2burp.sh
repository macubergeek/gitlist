cat $1 | grep '^\/' | grep -v ':' | while read line; do curl -s http://[target of scan]$line --proxy 127.0.0.1:8080 -o /dev/null; done
