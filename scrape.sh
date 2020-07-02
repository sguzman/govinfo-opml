#!/bin/bash

curl -sq 'https://www.govinfo.gov/feeds' | pup 'a[href$=".xml"] attr{href}' | sed -e 's@^@https://www.govinfo.gov@'
