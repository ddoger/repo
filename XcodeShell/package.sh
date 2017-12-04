#!/bin/bash
export HFWorkspacePath="/Users/chenmenglou/Desktop/NewSvn/ehuodiOwneriPhone/branches/TFHuoDiShipperWechatVTwo/TFHuoDiShipper.xcworkspace"
export HFScheme="release"
export HFSdk="iphoneos"
export HFConfiguration="Debug"

cd /Users/chenmenglou/Desktop/XcodeShell

rm  -rf ./ipa/*
rm  -rf ./archive/*

echo $HFConfiguration 
./cleararchive.sh
#xcodebuild clean -workspace $HFWorkspacePath -scheme $HFScheme -configuration $HFConfiguration -sdk $HFSdk

echo
./mkarchive.sh
#xcodebuild archive -archivePath ./archive/app.xcarchive -workspace $HFWorkspacePath -scheme $HFScheme -configuration $HFConfiguration -sdk $HFSdk 

echo
./archive2ipa.sh
#xcodebuild -exportArchive -archivePath ./archive/app.xcarchive -exportPath ./ipa/ -exportOptionsPlist ./app.plist

unset HFWorkspacePath
unset HFScheme
unset HFSdk
unset HFConfiguration

#配置别名（alias）--对自己有效
#  sudo vim ~/.bashrc 
#加入内容
#  alias hfpackage="/Users/chenmenglou/Desktop/XcodeShell/package.sh"
#使配置生效
#  source ~/.bashrc

#配置别名（alias）--对所有用户有效
#编辑~/.bashrc文件
#  sudo vim /etc/profile.d/custom-aliases.sh
#加入内容
#  alias hfpackage="/Users/chenmenglou/Desktop/XcodeShell/package.sh"
#使配置生效
#  source ~/.bashrc
