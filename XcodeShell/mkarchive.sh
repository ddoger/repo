#!/bin/bash
xcodebuild archive -archivePath ./archive/app.xcarchive -workspace $HFWorkspacePath -scheme $HFScheme -configuration $HFConfiguration -sdk $HFSdk 
#-sdk iphoneos9.3
#-configuration [Debug/Release]	
#chmod+x 文件名解决权限问题