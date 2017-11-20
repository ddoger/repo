#!/bin/bash
xcodebuild clean -workspace $HFWorkspacePath -scheme $HFScheme -configuration $HFConfiguration -sdk $HFSdk
#xcodebuild: error: SDK "iphoneos9.3" cannot be located.
#解决方法：给Xcode命令行工具指定路径：
#mac$ xcode-select --print-path 查找路径
#mac$ xcodebuild -showsdks 查看sdk版本
#mac$ sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer/

