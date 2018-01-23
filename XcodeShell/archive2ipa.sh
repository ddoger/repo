#!/bin/bash
xcodebuild -exportArchive -archivePath ./archive/app.xcarchive -exportPath ./ipa/ -exportOptionsPlist $HFPlist -allowProvisioningUpdates

