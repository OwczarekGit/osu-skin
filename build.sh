#!/bin/bash

BUILD_DIR="build"

main(){
	for i in $(ls "./svgs/")
	do
		newname=$(echo "$i" | sed 's/.svg/.png/g')
		magick -background none "svgs/$i" "$BUILD_DIR/$newname"
		echo "svgs/$i"
	done
}


main
