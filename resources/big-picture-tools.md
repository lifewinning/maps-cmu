# Neat Mapping Tools For You To Know About

***

## Free Open Source Libraries

### Leaflet
[leafletjs.com](http://leafletjs.com)
 
The tool we'll be mainly looking at today, and a really great foundational open source library for rendering slippy maps. 

### D3
[d3js.org](http://d3js.org)

Originally created by Mike Bostock at and for the New York Times, D3 (data-driven documents) is a javascript library for rendering data visualizations as SVGs. It's pretty vast and covers a lot of use cases, including maps. Here is [one intro](http://bost.ocks.org/mike/map/) to mapping with D3.

## Desktop Software

### ESRI/ArcGIS
[esri.com](http://esri.com)

ESRI basically dominates the market for GIS software. They kind of *are* GIS software. You will run into their proprietary data format, the *shapefile*, pretty much all over the place. It's really expensive software, but universities often have licenses if you're a student and want to try or learn it. 

### QGIS
[qgis.org](http://qgis.org)

Pretty much the only open source desktop GIS software out there. It's clunky as hell sometimes but gets the job done. Created originally by Boundless, a company described in more detail further below.

## Companies Offering Services

####Caveats, always caveats

A lot of the platforms and open source tools currently available for web mapping are products supported by companies. We're not going deep into the specifics of these platforms and tools mainly because (1) I didn't really want to waste time on people registering for accounts and API keys and (2) these companies are all really, really good at documentation of their products and I am pretty sure you're all perfectly competent people. 

In addition to information about their specific tools, I've included some background on the companies--software doesn't emerge from a vacuum. 

### Mapbox 
[mapbox.com](http://mapbox.com)

**TLDR**

Basically, if you are working with anything OpenStreetMap related, you're going to run into tools built by Mapbox. And the tools they build are actually pretty great. 

**Who They Are**

Mapbox is about 6 years old, and began as a project from Development Seed, a boutique data visualization studio working with NGOs in Washington, DC. Mapbox's tools were, essentially, tools Development Seed needed to do their work, and they realized there was a solid business opportunity in making those tools available to others. They also offer one of the few alternatives to Google or Bing satellite imagery, in partnership with Digital Globe. 

Mapbox currently has offices in San Francisco, Washington, DC; Bangalore, and Peru. Their funders include The Foundry Group, DFG, DBI Investors, Thrive Capital, Pritzker Group, and Promus Ventures. 

**What They Offer**: 

- Mapbox Studio, free desktop software for styling and editing web maps 
- hosting services for map tiles created in Mapbox Studio (cost varies on use)
- A suite of APIs:
	- mapbox.js: library for generating maps, built on top of Leaflet
	- mapbox-gl.js: library for working with vector tile maps
	- Services: Geocoding, Directions, more things
	- iOS and Android SDKs


### CartoDB
cartodb.com

**TLDR**

If you want to work with really large datasets and prefer styling in a GUI, this is a super useful service. 

**Who They Are**

CartoDB was founded in 2012 and has offices in Madrid and New York City. Their funders include Accel Partners and Salesforce Ventures.

**What They Offer**

CartoDB is basically a platform-as-service model company that provides users with a nice interface for working with hosted geodata. It's basically a dashbaord for PostGIS with a styling wizard tool, and some helpful APIs for integrating and pulling CartoDB-hosted data onto a map.

### Mapzen
mapzen.com

**TLDR**

Super-cool products, which are finally starting to kind of stabilize, but not necessarily production-ready tools. 

**Who They Are**

Mapzen started in 2013. It's an R&D lab disguised as a startup, currently being funded entirely by Samsung. As far as anyone can tell it's a gamble within Samsung to see whether building out better open source mapping tools will offer better alternatives to Google Maps, so that Samsung can eventually fork Android and build their own OS without needing Google tools, like Maps. Whether that will work is totally anyone's guess. 

**What They Offer**

- A bunch of API services for things like vector tile rendering, search, and routing, which are built on top of open source libraries they maintain. Those libraries include: 
	- Tangram, a GL rendering engine for vector data. Mostly super cool because of its capacity for making 3D maps and for doing hella weird shit with shaders. 
	- Pelias, a geocoder
	- Valhalla, a routing engine

(Fact: all of Mapzen's libraries have way, way better names than the API services)

### Boundless
[boundlessgeo.com](http://boundlessgeo.com/)

**TLDR**

Built many of the open source tools that are the foundation of working with spatial data online. You will probably never actually have to give them money.

**Who They Are**

Originally called OpenGeo, Boundless was an open source lab working on really awesome mapping tools. They got a rebranding and new business focus  when they got a huge round of funding from In-Q-Tel, the CIA's venture capital firm. Have subsequently been spooky and unsettling AF, but their open source tools remain open.

**What They Offer/Built**

- PostGIS, a geodatabase platform built on top of Postgres
- QGIS
- OpenLayers, another tile rendering framework that they keep trying to make happen and it's just not happening really