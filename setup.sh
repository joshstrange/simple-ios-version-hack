#!/bin/bash

echo "Backing up original SystemVersion.plist to /System/Library/CoreServices/SystemVersion.plist.original"
cp /System/Library/CoreServices/SystemVersion.plist /System/Library/CoreServices/SystemVersion.plist.original

echo "Downloading 7.0.4 and 7.0.6 versions of SystemVersion"
curl --silent --insecure https://raw.github.com/joshstrange/simple-ios-version-hack/master/SystemVersion.plist.7.0.4 -o /System/Library/CoreServices/SystemVersion.plist.7.0.4
curl --silent --insecure https://raw.github.com/joshstrange/simple-ios-version-hack/master/SystemVersion.plist.7.0.6 -o /System/Library/CoreServices/SystemVersion.plist.7.0.6

echo "Downloading scripts to switch SystemVersion files"
curl --silent --insecure https://raw.github.com/joshstrange/simple-ios-version-hack/master/switch-to-7.0.4 -o ~/switch-to-7.0.4
curl --silent --insecure https://raw.github.com/joshstrange/simple-ios-version-hack/master/switch-to-7.0.6 -o ~/switch-to-7.0.6

echo "Setting execute permissions"
chmod u+x ~/switch-to-7.0.4
chmod u+x ~/switch-to-7.0.6

echo "Done! You can now use the commands: ./switch-to-7.0.4 and ./switch-to-7.0.6"
