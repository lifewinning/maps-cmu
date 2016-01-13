# Objectives

By the end of this workshop, participants:

- Will have a solid understanding of how web maps are rendered
- Will be able to convert geodata into formats easy to use on the web
- Will be able to create a simple slippy map with custom data points and tooltips
- Will know *why* maps are an interesting thing to use and work with 

# Prerequisite Things To Install
- npm (for various useful data tools--https://docs.npmjs.com/getting-started/installing-node)
- GDAL (http://trac.osgeo.org/gdal/wiki/DownloadingGdalBinaries)
- GPSBabel (http://www.gpsbabel.org/download.html--has a desktop application, we will be mainly using the command line utility)
- If you prefer/have it, all three of these can be installed via **Homebrew**!

# Part 1: Leaflet/OSM stack

## Breakdown of Slippy Maps

- Digital vs Web (i.e., ArcGIS vs web and how we got here)
- Base Layer (tiles)
	- Sources
		- Proprietary (Google Maps, Bing)
		- OpenStreetMap (what we'll actually be using for examples)
			- There are a few companies that have basically turned OSM into the foundation of their business. We're not going to dive deep into their particular platforms today but they're good to know about as options
			- Mapbox (whole wide-randing suite of tools, some of which we'll be using, but heart of their project/business model is a pipeline for rendering tiles and generating maps)
			- CartoDB (powerful data storage/querying tool, nice GUIs for visualizations)  
	- Types
		- Raster (i.e. image files)
		- Vector
- Data layer
	- Data types (point, line, polygon)
	- File formats
		- KML
		- GeoJSON
		- TopoJSON

 
## Setting Up Your Base Layer

- Leaflet! <3 <3 <3 
- Sources for base tiles
	- Stamen
	- Mapbox
	- CartoDB
	- USGS EarthExplorer
- Custom tile-making from OSM
	- Mapbox Studio (cartoCSS)
	- Tangram (YAML file--for people who like shaders this will be very exciting possibly, but I am not a GL person At All so probably will save that for the end)
	
## Making a Map Data Layer and Putting it On a Map

- Finding interesting geodata (Natural Earth, government portals, OSM Metro Extracts, extracting data from OpenStreetMap)
- Map Data Formats (GeoJSON, KML, shapefile, GPX, NMEA, CSV, PostGIS database, Google's totally weird proprietary JSON format) 
- Converting file formats: 
	- Web tools (CartoDB, geojson.io)
	- **ogr2ogr** (a library of GDAL) and **GPSBabel** are good for real persnickety data types and kind of just good to know about.
	- there are lots of useful little node modules out there that do some fairly common conversions (**togeojson**, **csvtogeojson**)
- Geocoding (is really really hard!)
	- Forward Geocoding vs Reverse Geocoding
	- Why it's really really hard (i.e., data and politics)
	- APIs, they exist, now you know
		- Google Maps
		- Mapquest
		- Geonames
		- Mapbox Geocoder
		- Mapzen Search 

- **Example/walkthrough: convert exif data from camera photos into a GeoJSON and turn them into markers on a map**
	- Methods of adding GeoJSON file
	- Styling GeoJSON layer
	- Interactivity/tooltips

# Break!

# Part 2: Alternatives, Critical Questions, Ideas

- Quick note on D3 as alternative for web mapping

	