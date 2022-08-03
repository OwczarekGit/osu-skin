#!/bin/bash

BUILD_DIR="build"

main(){
	for i in $(ls "./svgs/")
	do
		newname=$(echo "$i" | sed 's/.svg/.png/g')
		newname2x=$(echo "$i" | sed 's/.svg/@2x.png/g')
		magick -background none "svgs/$i" -resize 50% "$BUILD_DIR/$newname"
		magick -background none "svgs/$i" "$BUILD_DIR/$newname2x"
		echo "svgs/$i"
	done
}


main
