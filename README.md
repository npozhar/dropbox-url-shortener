Dropbox url shortener
=====================

Simple script that I use as part of Automator service for easy Dropbox file sharing in Mac OS X. It looks like that:

![Service Example](http://goo.gl/4mgr1)

Just choose any file you want, click "Share with dropbox", and it automaticly copy file to your Dropbox Public folder (in my case ~/Dropbox/Public/FileShare/), get short link using Google API and paste it to clipboard.

How to get it
--
1. Create new service in Automator:
![Service configuration](http://goo.gl/FtVWP)
2. Choose your Dropbox Public folder in the "Copy Finder Items" action. In my case it is ~/Dropbox/Public/FileShare/.
3. Make sure to choose "as arguments" in "Pass input" in "Run Shell Script" action.
4. Copy script code and remove "xxx" with your Dropbox UserID.
5. Save service and try to use it!

