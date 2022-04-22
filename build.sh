#!/bin/bash


main(){
	
	for i in $(ls *.svg)
	do
		newname=$(echo "$i" | sed 's/.svg/.png/g')
		magick -background none $i $newname
	done

}


main
