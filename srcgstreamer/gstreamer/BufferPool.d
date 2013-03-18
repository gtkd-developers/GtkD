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

/*
 * Conversion parameters:
 * inFile  = gstreamer-GstBufferPool.html
 * outPack = gstreamer
 * outFile = BufferPool
 * strct   = GstBufferPool
 * realStrct=
 * ctorStrct=
 * clss    = BufferPool
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_buffer_pool_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Allocator
 * 	- gstreamer.Buffer
 * 	- gstreamer.Caps
 * 	- gstreamer.Structure
 * structWrap:
 * 	- GstAllocator* -> Allocator
 * 	- GstBuffer* -> Buffer
 * 	- GstCaps* -> Caps
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.BufferPool;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Allocator;
private import gstreamer.Buffer;
private import gstreamer.Caps;
private import gstreamer.Structure;




/**
 * a GstBufferPool is an object that can be used to pre-allocate and recycle
 * buffers of the same size and with the same properties.
 *
 * A GstBufferPool is created with gst_buffer_pool_new().
 *
 * After the buffer is created, it needs to be configured.
 * gst_buffer_pool_get_config() get the current configuration structure from the
 * pool. With gst_buffer_pool_config_set_params() and
 * gst_buffer_pool_config_set_allocator() the bufferpool parameters and allocator
 * can be configured. Other properties can be configured in the pool depending
 * on the pool implementation.
 *
 * A bufferpool can have extra options that can be enabled with
 * gst_buffer_pool_config_add_option(). The available options can be retrieved
 * with gst_buffer_pool_get_options(). Some options allow for additional
 * configuration properties to be set.
 *
 * After the configuration structure has been configured,
 * gst_buffer_pool_set_config() updates the configuration in the pool. This can
 * fail when the configuration structure is not accepted.
 *
 * After the a pool has been configured, it can be activated with
 * gst_buffer_pool_set_active(). This will preallocate the configured resources
 * in the pool.
 *
 * When the pool is active, gst_buffer_pool_acquire_buffer() can be used to
 * retrieve a buffer from the pool.
 *
 * Buffer allocated from a bufferpool will automatically be returned to the pool
 * with gst_buffer_pool_release_buffer() when their refcount drops to 0.
 *
 * The bufferpool can be deactivated again with gst_buffer_pool_set_active().
 * All further gst_buffer_pool_acquire_buffer() calls will return an error. When
 * all buffers are returned to the pool they will be freed.
 *
 * Use gst_object_unref() to release the reference to a bufferpool. If the
 * refcount of the pool reaches 0, the pool will be freed.
 *
 * Last reviewed on 2012-03-28 (0.11.3)
 */
public class BufferPool
{
	
	/** the main Gtk struct */
	protected GstBufferPool* gstBufferPool;
	
	
	public GstBufferPool* getBufferPoolStruct()
	{
		return gstBufferPool;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstBufferPool;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstBufferPool* gstBufferPool)
	{
		this.gstBufferPool = gstBufferPool;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GstBufferPool instance.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstBufferPool * gst_buffer_pool_new (void);
		auto p = gst_buffer_pool_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_pool_new()");
		}
		this(cast(GstBufferPool*) p);
	}
	
	/**
	 * Get the configuration values from config.
	 * Params:
	 * config = a GstBufferPool configuration. [transfer none]
	 * caps = the caps of buffers. [out][transfer none][allow-none]
	 * size = the size of each buffer, not including prefix and padding. [out][allow-none]
	 * minBuffers = the minimum amount of buffers to allocate. [out][allow-none]
	 * maxBuffers = the maximum amount of buffers to allocate or 0 for unlimited. [out][allow-none]
	 * Returns: TRUE if all parameters could be fetched.
	 */
	public static int configGetParams(Structure config, out Caps caps, out uint size, out uint minBuffers, out uint maxBuffers)
	{
		// gboolean gst_buffer_pool_config_get_params (GstStructure *config,  GstCaps **caps,  guint *size,  guint *min_buffers,  guint *max_buffers);
		GstCaps* outcaps = null;
		
		auto p = gst_buffer_pool_config_get_params((config is null) ? null : config.getStructureStruct(), &outcaps, &size, &minBuffers, &maxBuffers);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
		return p;
	}
	
	/**
	 * Configure config with the given parameters.
	 * Params:
	 * config = a GstBufferPool configuration
	 * caps = caps for the buffers
	 * size = the size of each buffer, not including prefix and padding
	 * minBuffers = the minimum amount of buffers to allocate.
	 * maxBuffers = the maximum amount of buffers to allocate or 0 for unlimited.
	 */
	public static void configSetParams(Structure config, Caps caps, uint size, uint minBuffers, uint maxBuffers)
	{
		// void gst_buffer_pool_config_set_params (GstStructure *config,  GstCaps *caps,  guint size,  guint min_buffers,  guint max_buffers);
		gst_buffer_pool_config_set_params((config is null) ? null : config.getStructureStruct(), (caps is null) ? null : caps.getCapsStruct(), size, minBuffers, maxBuffers);
	}
	
	/**
	 * Get the allocator and params from config.
	 * Params:
	 * config = a GstBufferPool configuration. [transfer none]
	 * allocator = a GstAllocator. [transfer none]
	 * params = GstAllocationParams
	 */
	public static int configGetAllocator(Structure config, ref Allocator allocator, GstAllocationParams* params)
	{
		// gboolean gst_buffer_pool_config_get_allocator  (GstStructure *config,  GstAllocator **allocator,  GstAllocationParams *params);
		GstAllocator* outallocator = (allocator is null) ? null : allocator.getAllocatorStruct();
		
		auto p = gst_buffer_pool_config_get_allocator((config is null) ? null : config.getStructureStruct(), &outallocator, params);
		
		allocator = ObjectG.getDObject!(Allocator)(outallocator);
		return p;
	}
	
	/**
	 * Set the allocator and params on config.
	 * One of allocator and params can be NULL, but not both. When allocator
	 * is NULL, the default allocator of the pool will use the values in param
	 * to perform its allocation. When param is NULL, the pool will use the
	 * provided allocator with its default GstAllocationParams.
	 * A call to gst_buffer_pool_set_config() can update the allocator and params
	 * with the values that it is able to do. Some pools are, for example, not able
	 * to operate with different allocators or cannot allocate with the values
	 * specified in params. Use gst_buffer_pool_get_config() to get the currently
	 * used values.
	 * Params:
	 * config = a GstBufferPool configuration
	 * allocator = a GstAllocator
	 * params = GstAllocationParams
	 */
	public static void configSetAllocator(Structure config, Allocator allocator, GstAllocationParams* params)
	{
		// void gst_buffer_pool_config_set_allocator  (GstStructure *config,  GstAllocator *allocator,  const GstAllocationParams *params);
		gst_buffer_pool_config_set_allocator((config is null) ? null : config.getStructureStruct(), (allocator is null) ? null : allocator.getAllocatorStruct(), params);
	}
	
	/**
	 * Retrieve the number of values currently stored in the
	 * options array of the config structure.
	 * Params:
	 * config = a GstBufferPool configuration
	 * Returns: the options array size as a guint.
	 */
	public static uint configNOptions(Structure config)
	{
		// guint gst_buffer_pool_config_n_options (GstStructure *config);
		return gst_buffer_pool_config_n_options((config is null) ? null : config.getStructureStruct());
	}
	
	/**
	 * Enabled the option in config. This will instruct the bufferpool to enable
	 * the specified option on the buffers that it allocates.
	 * The supported options by pool can be retrieved with gst_buffer_pool_get_options().
	 * Params:
	 * config = a GstBufferPool configuration
	 * option = an option to add
	 */
	public static void configAddOption(Structure config, string option)
	{
		// void gst_buffer_pool_config_add_option (GstStructure *config,  const gchar *option);
		gst_buffer_pool_config_add_option((config is null) ? null : config.getStructureStruct(), Str.toStringz(option));
	}
	
	/**
	 * Parse an available config and get the option
	 * at index of the options API array.
	 * Params:
	 * config = a GstBufferPool configuration
	 * index = position in the option array to read
	 * Returns: a gchar of the option at index.
	 */
	public static string configGetOption(Structure config, uint index)
	{
		// const gchar * gst_buffer_pool_config_get_option (GstStructure *config,  guint index);
		return Str.toString(gst_buffer_pool_config_get_option((config is null) ? null : config.getStructureStruct(), index));
	}
	
	/**
	 * Check if config contains option
	 * Params:
	 * config = a GstBufferPool configuration
	 * option = an option
	 * Returns: TRUE if the options array contains option.
	 */
	public static int configHasOption(Structure config, string option)
	{
		// gboolean gst_buffer_pool_config_has_option (GstStructure *config,  const gchar *option);
		return gst_buffer_pool_config_has_option((config is null) ? null : config.getStructureStruct(), Str.toStringz(option));
	}
	
	/**
	 * Get a NULL terminated array of string with supported bufferpool options for
	 * pool. An option would typically be enabled with
	 * gst_buffer_pool_config_add_option().
	 * Returns: a NULL terminated array of strings. [array zero-terminated=1][transfer none]
	 */
	public string[] getOptions()
	{
		// const gchar ** gst_buffer_pool_get_options (GstBufferPool *pool);
		return Str.toStringArray(gst_buffer_pool_get_options(gstBufferPool));
	}
	
	/**
	 * Check if the bufferpool supports option.
	 * Params:
	 * option = an option
	 * Returns: a NULL terminated array of strings.
	 */
	public int hasOption(string option)
	{
		// gboolean gst_buffer_pool_has_option (GstBufferPool *pool,  const gchar *option);
		return gst_buffer_pool_has_option(gstBufferPool, Str.toStringz(option));
	}
	
	/**
	 * Get a copy of the current configuration of the pool. This configuration
	 * can either be modified and used for the gst_buffer_pool_set_config() call
	 * or it must be freed after usage.
	 * Returns: a copy of the current configuration of pool. use gst_structure_free() after usage or gst_buffer_pool_set_config(). [transfer full]
	 */
	public Structure getConfig()
	{
		// GstStructure * gst_buffer_pool_get_config (GstBufferPool *pool);
		auto p = gst_buffer_pool_get_config(gstBufferPool);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Set the configuration of the pool. The pool must be inactive and all buffers
	 * allocated form this pool must be returned or else this function will do
	 * nothing and return FALSE.
	 * config is a GstStructure that contains the configuration parameters for
	 * the pool. A default and mandatory set of parameters can be configured with
	 * gst_buffer_pool_config_set_params(), gst_buffer_pool_config_set_allocator()
	 * and gst_buffer_pool_config_add_option().
	 * If the parameters in config can not be set exactly, this function returns
	 * FALSE and will try to update as much state as possible. The new state can
	 * then be retrieved and refined with gst_buffer_pool_get_config().
	 * This function takes ownership of config.
	 * Params:
	 * config = a GstStructure. [transfer full]
	 * Returns: TRUE when the configuration could be set.
	 */
	public int setConfig(Structure config)
	{
		// gboolean gst_buffer_pool_set_config (GstBufferPool *pool,  GstStructure *config);
		return gst_buffer_pool_set_config(gstBufferPool, (config is null) ? null : config.getStructureStruct());
	}
	
	/**
	 * Control the active state of pool. When the pool is active, new calls to
	 * gst_buffer_pool_acquire_buffer() will return with GST_FLOW_FLUSHING.
	 * Activating the bufferpool will preallocate all resources in the pool based on
	 * the configuration of the pool.
	 * Deactivating will free the resources again when there are no outstanding
	 * buffers. When there are outstanding buffers, they will be freed as soon as
	 * they are all returned to the pool.
	 * Params:
	 * active = the new active state
	 * Returns: FALSE when the pool was not configured or when preallocation of the buffers failed.
	 */
	public int setActive(int active)
	{
		// gboolean gst_buffer_pool_set_active (GstBufferPool *pool,  gboolean active);
		return gst_buffer_pool_set_active(gstBufferPool, active);
	}
	
	/**
	 * Check if pool is active. A pool can be activated with the
	 * gst_buffer_pool_set_active() call.
	 * Returns: TRUE when the pool is active.
	 */
	public int isActive()
	{
		// gboolean gst_buffer_pool_is_active (GstBufferPool *pool);
		return gst_buffer_pool_is_active(gstBufferPool);
	}
	
	/**
	 * Acquire a buffer from pool. buffer should point to a memory location that
	 * can hold a pointer to the new buffer.
	 * params can be NULL or contain optional parameters to influence the allocation.
	 * Params:
	 * buffer = a location for a GstBuffer. [out]
	 * params = (transfer none) (allow-none) parameters.
	 * Returns: a GstFlowReturn such as GST_FLOW_FLUSHING when the pool is inactive.
	 */
	public GstFlowReturn acquireBuffer(out Buffer buffer, GstBufferPoolAcquireParams* params)
	{
		// GstFlowReturn gst_buffer_pool_acquire_buffer (GstBufferPool *pool,  GstBuffer **buffer,  GstBufferPoolAcquireParams *params);
		GstBuffer* outbuffer = null;
		
		auto p = gst_buffer_pool_acquire_buffer(gstBufferPool, &outbuffer, params);
		
		buffer = ObjectG.getDObject!(Buffer)(outbuffer);
		return p;
	}
	
	/**
	 * Release buffer to pool. buffer should have previously been allocated from
	 * pool with gst_buffer_pool_acquire_buffer().
	 * This function is usually called automatically when the last ref on buffer
	 * disappears.
	 * Params:
	 * buffer = a GstBuffer. [transfer full]
	 */
	public void releaseBuffer(Buffer buffer)
	{
		// void gst_buffer_pool_release_buffer (GstBufferPool *pool,  GstBuffer *buffer);
		gst_buffer_pool_release_buffer(gstBufferPool, (buffer is null) ? null : buffer.getBufferStruct());
	}
}
