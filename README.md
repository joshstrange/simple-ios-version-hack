simple-ios-version-hack
=======================

A simple way to "switch" your iOS version from 7.0.4 to 7.0.6 to fix the SSL Patch / Simple Bank App issues


## How to

Simply SSH into your iPhone (Or run from Mobile Terminal):

````bash
curl https://raw.github.com/joshstrange/simple-ios-version-hack/master/setup.sh --insecure --silent | bash
````

This will setup everything for you. You will see the following output:

````
Backing up original SystemVersion.plist to /System/Library/CoreServices/SystemVersion.plist.original
Downloading 7.0.4 and 7.0.6 versions of SystemVersion
Downloading scripts to switch SystemVersion files
Setting execute permissions
Done! You can now use the commands: ./switch-to-7.0.4 and ./switch-to-7.0.6
````

Once this is done you can use SSH or Mobile Terminal to "switch" your iOS version with the commands: 

````
./switch-to-7.0.4
#And
./switch-to-7.0.6
````


## Why?

This is to provide jailbroken iOS users who also use [Simple](https://www.simple.com/) and are stuck on iOS 7.0.4 (which has a nasty [SSL/TLS bug](https://www.imperialviolet.org/2014/02/22/applebug.html)) due to the release of 7.1. Simple has disabled their app on <7.0.6 due to the bug (and rightfully so) unfortunately those of us with jailbroken phones who installed [SSLPatch](https://github.com/linusyang/SSLPatch) are still unable to use the Simple app. Even worse now that Apple has released 7.1 (non-jailbreakable) we cannot upgrade to 7.0.6 and re-jailbreak. 

However you can fake the Simple app out by changing the system file that holds the system version to say it's 7.0.6. This is would be all that was needed except SSLPatch tries to uninstall itself when it sees the system OS is 7.0.6 (because 7.0.6 doesn't need the SSL fix). This leaves the user with the options of never installing new cydia packages or leaving your phone vulnerable. This repo seeks to provide a band-aide solution where you can "switch" your OS version to 7.0.4 when you want to use Cydia and to 7.0.6 when you want to use Simple.