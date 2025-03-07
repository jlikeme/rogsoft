#!/bin/sh

# build script for rogsoft project

MODULE="routerhook"
VERSION="1.4"
TITLE="RouterHook事件回调"
DESCRIPTION="从路由器推送状态及通知的工具"
HOME_URL="Module_routerhook.asp"
TAGS="推送"
AUTHOR="囍冯总囍/Jlikeme"
LINK="https://koolshare.cn/thread-178114-1-1.html"

# Check and include base
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ "$MODULE" == "" ]; then
    echo "module not found"
    exit 1
fi

if [ -f "$DIR/$MODULE/$MODULE/install.sh" ]; then
    echo "install script not found"
    exit 2
fi

# now include build_base.sh
. $DIR/../softcenter/build_base.sh

# change to module directory
cd $DIR

# do something here
do_build_result
