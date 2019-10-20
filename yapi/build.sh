#!/bin/bash
function generate(){
        local file=Dockerfile
		local composefile=docker-compose.yml
        local tempDir=template
        local version=$1
        if [ -d $version ];then rm -rf $version
        fi
        mkdir $version
        cd $1
        cp ../$tempDir/$file .
		cp ../$tempDir/$composefile .
        sed -i "s/version-v/"$1"/g"  ./$file
		sed -i "s/version-v/"$1"/g"  ./$composefile
        cp ./$file ..
		cp ./$composefile ..
}
function build(){
        local image_name=$1
        local file_local=$2
                docker build -t $image_name $file_local
}
function main(){
        local command=$1
        shift
        case "$command" in
         generate) generate "$@" ;;
         build) build "$@" ;;
         *)  echo "Usage: $0 <generate||build>" ;;
        esac
}
main "$@"