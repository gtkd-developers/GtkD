/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module shumate.c.types;

public import gdk.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;


/**
 * Error codes in the #SHUMATE_FILE_CACHE_ERROR domain.
 */
public enum ShumateFileCacheError
{
	/**
	 * An unspecified error occurred during the operation.
	 */
	FAILED = 0,
}
alias ShumateFileCacheError FileCacheError;

/**
 * Projections supported by the library.
 */
public enum ShumateMapProjection
{
	/**
	 * Currently the only supported projection
	 */
	MERCATOR = 0,
}
alias ShumateMapProjection MapProjection;

/**
 * Tile loading state.
 */
public enum ShumateState
{
	/**
	 * Initial or undefined state
	 */
	NONE = 0,
	/**
	 * Tile is loading
	 */
	LOADING = 1,
	/**
	 * Tile is loaded but not yet displayed
	 */
	LOADED = 2,
	/**
	 * Tile loading finished. Also used to inform map sources
	 * that tile loading has been cancelled.
	 */
	DONE = 3,
}
alias ShumateState State;

/**
 * Error codes that occurs while parsing the style in [class@VectorRenderer].
 */
public enum ShumateStyleError
{
	/**
	 * An unspecified error occurred during the operation.
	 */
	FAILED = 0,
	/**
	 * A JSON node in the style has the wrong type (e.g. an object where there should be an array).
	 */
	MALFORMED_STYLE = 1,
	/**
	 * An unsupported layer type was encountered.
	 */
	UNSUPPORTED_LAYER = 2,
	/**
	 * An invalid or unrecognized expression was encountered.
	 */
	INVALID_EXPRESSION = 3,
	/**
	 * Libshumate was compiled without vector tile support.
	 */
	SUPPORT_OMITTED = 4,
}
alias ShumateStyleError StyleError;

/**
 * Error codes in the #SHUMATE_TILE_DOWNLOADER_ERROR domain.
 */
public enum ShumateTileDownloaderError
{
	/**
	 * An unspecified error occurred during the operation.
	 */
	FAILED = 0,
	/**
	 * An unsuccessful HTTP response was received from the server.
	 */
	BAD_RESPONSE = 1,
	/**
	 * The server could not be reached.
	 */
	COULD_NOT_CONNECT = 2,
	/**
	 * The provided URL isn't valid
	 */
	MALFORMED_URL = 3,
	/**
	 * The tile source has been marked as offline.
	 */
	OFFLINE = 4,
}
alias ShumateTileDownloaderError TileDownloaderError;

/**
 * Units used by the scale.
 */
public enum ShumateUnit
{
	/**
	 * Both metric and imperial units
	 */
	BOTH = 0,
	/**
	 * Metric units (meters)
	 */
	METRIC = 1,
	/**
	 * Imperial units (miles)
	 */
	IMPERIAL = 2,
}
alias ShumateUnit Unit;

struct ShumateCompass;

struct ShumateCompassClass
{
	GtkWidgetClass parentClass;
}

struct ShumateCoordinate
{
	GObject parentInstance;
}

struct ShumateCoordinateClass
{
	GObjectClass parentClass;
}

struct ShumateDataSource
{
	GObject parentInstance;
}

struct ShumateDataSourceClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(ShumateDataSource* self, int x, int y, int zoomLevel, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) getTileDataAsync;
	/**
	 *
	 * Params:
	 *     self = a [class@DataSource]
	 *     result = a #GAsyncResult provided to callback
	 * Returns: The requested data, or %NULL if an
	 *     error occurred
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GBytes* function(ShumateDataSource* self, GAsyncResult* result, GError** err) getTileDataFinish;
}

struct ShumateFileCache
{
	GObject parentInstance;
}

struct ShumateFileCacheClass
{
	GObjectClass parentClass;
}

struct ShumateLayer
{
	GtkWidget parentInstance;
}

struct ShumateLayerClass
{
	GtkWidgetClass parentClass;
}

struct ShumateLicense;

struct ShumateLicenseClass
{
	GtkWidgetClass parentClass;
}

struct ShumateLocation;

/**
 * An interface common to objects having latitude and longitude.
 */
struct ShumateLocationInterface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     location = a #ShumateLocation
	 * Returns: the latitude coordinate in degrees.
	 */
	extern(C) double function(ShumateLocation* location) getLatitude;
	/**
	 *
	 * Params:
	 *     location = a #ShumateLocation
	 * Returns: the longitude coordinate in degrees.
	 */
	extern(C) double function(ShumateLocation* location) getLongitude;
	/** */
	extern(C) void function(ShumateLocation* location, double latitude, double longitude) setLocation;
}

struct ShumateMap
{
	GtkWidget parentInstance;
}

struct ShumateMapClass
{
	GtkWidgetClass parentClass;
}

struct ShumateMapLayer;

struct ShumateMapLayerClass
{
	ShumateLayerClass parentClass;
}

struct ShumateMapSource
{
	GObject parentInstance;
}

struct ShumateMapSourceClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(ShumateMapSource* self, ShumateTile* tile, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) fillTileAsync;
	/**
	 *
	 * Params:
	 *     self = a #ShumateMapSource
	 *     result = a #GAsyncResult provided to callback
	 * Returns: %TRUE if the tile was filled with valid data, otherwise %FALSE
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(ShumateMapSource* self, GAsyncResult* result, GError** err) fillTileFinish;
}

struct ShumateMapSourceRegistry;

struct ShumateMapSourceRegistryClass
{
	GObjectClass parentClass;
}

struct ShumateMarker
{
	GtkWidget parentInstance;
}

struct ShumateMarkerClass
{
	GtkWidgetClass parentClass;
}

struct ShumateMarkerLayer
{
	ShumateLayer parentInstance;
}

struct ShumateMarkerLayerClass
{
	ShumateLayerClass parentClass;
}

struct ShumateMemoryCache
{
	GObject parentInstance;
}

struct ShumateMemoryCacheClass
{
	GObjectClass parentClass;
}

struct ShumatePathLayer
{
	ShumateLayer parentInstance;
}

struct ShumatePathLayerClass
{
	ShumateLayerClass parentClass;
}

struct ShumatePoint;

struct ShumatePointClass
{
	ShumateMarkerClass parentClass;
}

struct ShumateRasterRenderer;

struct ShumateRasterRendererClass
{
	ShumateMapSourceClass parentClass;
}

struct ShumateScale;

struct ShumateScaleClass
{
	GtkWidgetClass parentClass;
}

struct ShumateSimpleMap;

struct ShumateSimpleMapClass
{
	GtkWidgetClass parentClass;
}

struct ShumateTile
{
	GtkWidget parentInstance;
}

struct ShumateTileClass
{
	GtkWidgetClass parentClass;
}

struct ShumateTileDownloader;

struct ShumateTileDownloaderClass
{
	ShumateDataSourceClass parentClass;
}

struct ShumateVectorRenderer;

struct ShumateVectorRendererClass
{
	ShumateMapSourceClass parentClass;
}

struct ShumateViewport;

struct ShumateViewportClass
{
	GObjectClass parentClass;
}

/**
 * The major version of libshumate (1, if %SHUMATE_VERSION is 1.2.3)
 */
enum MAJOR_VERSION = 1;
alias SHUMATE_MAJOR_VERSION = MAJOR_VERSION;

/**
 * Maps for Free Relief
 */
enum MAP_SOURCE_MFF_RELIEF = "mff-relief";
alias SHUMATE_MAP_SOURCE_MFF_RELIEF = MAP_SOURCE_MFF_RELIEF;

/**
 * OpenStreetMap Cycle Map
 */
enum MAP_SOURCE_OSM_CYCLE_MAP = "osm-cyclemap";
alias SHUMATE_MAP_SOURCE_OSM_CYCLE_MAP = MAP_SOURCE_OSM_CYCLE_MAP;

/**
 * OpenStreetMap Mapnik
 */
enum MAP_SOURCE_OSM_MAPNIK = "osm-mapnik";
alias SHUMATE_MAP_SOURCE_OSM_MAPNIK = MAP_SOURCE_OSM_MAPNIK;

/**
 * OpenStreetMap Transport Map
 */
enum MAP_SOURCE_OSM_TRANSPORT_MAP = "osm-transportmap";
alias SHUMATE_MAP_SOURCE_OSM_TRANSPORT_MAP = MAP_SOURCE_OSM_TRANSPORT_MAP;

/**
 * OpenWeatherMap clouds layer
 */
enum MAP_SOURCE_OWM_CLOUDS = "owm-clouds";
alias SHUMATE_MAP_SOURCE_OWM_CLOUDS = MAP_SOURCE_OWM_CLOUDS;

/**
 * OpenWeatherMap precipitation
 */
enum MAP_SOURCE_OWM_PRECIPITATION = "owm-precipitation";
alias SHUMATE_MAP_SOURCE_OWM_PRECIPITATION = MAP_SOURCE_OWM_PRECIPITATION;

/**
 * OpenWeatherMap sea level pressure
 */
enum MAP_SOURCE_OWM_PRESSURE = "owm-pressure";
alias SHUMATE_MAP_SOURCE_OWM_PRESSURE = MAP_SOURCE_OWM_PRESSURE;

/**
 * OpenWeatherMap temperature
 */
enum MAP_SOURCE_OWM_TEMPERATURE = "owm-temperature";
alias SHUMATE_MAP_SOURCE_OWM_TEMPERATURE = MAP_SOURCE_OWM_TEMPERATURE;

/**
 * OpenWeatherMap wind
 */
enum MAP_SOURCE_OWM_WIND = "owm-wind";
alias SHUMATE_MAP_SOURCE_OWM_WIND = MAP_SOURCE_OWM_WIND;

/**
 * The maximal possible latitude value.
 */
enum MAX_LATITUDE = 85.0511287798;
alias SHUMATE_MAX_LATITUDE = MAX_LATITUDE;

/**
 * The maximal possible longitude value.
 */
enum MAX_LONGITUDE = 180.0;
alias SHUMATE_MAX_LONGITUDE = MAX_LONGITUDE;

/**
 * The micro version of libshumate (3, if %SHUMATE_VERSION is 1.2.3)
 */
enum MICRO_VERSION = 0;
alias SHUMATE_MICRO_VERSION = MICRO_VERSION;

/**
 * The minor version of libshumate (2, if %SHUMATE_VERSION is 1.2.3)
 */
enum MINOR_VERSION = 0;
alias SHUMATE_MINOR_VERSION = MINOR_VERSION;

/**
 * The minimal possible latitude value.
 */
enum MIN_LATITUDE = -85.0511287798;
alias SHUMATE_MIN_LATITUDE = MIN_LATITUDE;

/**
 * The minimal possible longitude value.
 */
enum MIN_LONGITUDE = -180.0;
alias SHUMATE_MIN_LONGITUDE = MIN_LONGITUDE;
