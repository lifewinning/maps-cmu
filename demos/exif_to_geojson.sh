 #!/bin/bash

# $1 = directory where your images live
# $2 = filename you want to give your final geojson

# if not running GPSBabel from homebrew: move the application into the directory with your images


cd $1

mkdir $2

for JPG in *.jpg
do 
	GPX=`echo $N | sed "s/.jpg/.gpx/"`	
	echo "converting file $JPG to $GPX"

	# if not running GPSBabel from homebrew: uncomment the below and comment out the current gpsbabel command

	# cd GPSBabelFE.app/Contents/Resources
	# gpsbabel \
	# -i exif \
	# -f ../../../$N \
	# -o gpx \
	# -F ../../../$GPX
	# cd ../../../

	gpsbabel \
	-i exif \
	-f $JPG \
	-o gpx \
	-F $GPX \

done

# extract tracks and rename file
for GPX in *.gpx
do
	echo "converting $GPX to geojson..."
	GEOJSON=`echo $GPX | sed "s/.gpx/.geojson/"`
	togeojson $GPX > $GEOJSON
	rm -rf $GPX

	mv $GEOJSON $2
done

cd $2

array=$( ls * )

geojson-merge $array > $2.geojson

mv $2.geojson ..

cd ..

rm -rf $2

exit