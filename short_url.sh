#!/bin/zsh
#
#  IMPORTANT!
#
#  To use this script remove xxx in $dropbox_url with your Dropbox UserID.
#  If you use subfolder in Public folder, add it to url. For example, if you
#  share files form ~/Dropbox/Public/FileShare (like me), you should use url
#  like this: "https://dl.dropbox.com/u/xxx/FileShare/".

dropbox_url="https://dl.dropbox.com/u/xxx"
file_path=$dropbox_url$(basename $1)


response=$(curl https://www.googleapis.com/urlshortener/v1/url \
           -H 'Content-Type: application/json' \
           -d '{"longUrl": "'$file_path'"}')

short_url=$(expr "$response" : '.*"id": "\([^"]*\)"')

echo $short_url | pbcopy