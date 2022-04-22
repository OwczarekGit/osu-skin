#!/bin/bash

BUILD_DIR="build"

main(){
	for i in $(ls *.svg)
	do
		newname=$(echo "$i" | sed 's/.svg/.png/g')
		magick -background none $i "$BUILD_DIR/$newname"
	done
}


main
