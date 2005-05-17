/*
 * File:	gobject.d
 * Author:	John Reimer
 * Date:    2005-05-05  Initial release
 */

module lib.gobject;

private 
{
	import def.Types;
	import def.Constants;
	import lib.loader;
	import lib.paths;
	debug import std.stdio;
}

private Linker gobject_Linker;

static this()
{
	gobject_Linker = new Linker(libPath ~ importLibs[LIBRARY.GOBJECT]);
	gobject_Linker.link(gobjectLinks);
	debug writefln("* Finished static this(): gobject");
}

static ~this()
{
	delete gobject_Linker;
	debug writefln("* Finished static this(): gobject");
}

extern(C)
{
	GValue*		function(GValue * value, GType g_type)
			g_value_init;
	void		function(GValue * src_value, GValue * dest_value)
			g_value_copy;
	GValue*		function(GValue * value)
			g_value_reset;
	void		function(GValue * value)
			g_value_unset;
	gboolean		function(GValue * value)
			g_value_fits_pointer;
	gpointer		function(GValue * value)
			g_value_peek_pointer;
	gboolean		function(GType src_type, GType dest_type)
			g_value_type_compatible;
	gboolean		function(GType src_type, GType dest_type)
			g_value_type_transformable;
	gboolean		function(GValue * src_value, GValue * dest_value)
			g_value_transform;
	gchar*		function(GValue * value)
			g_strdup_value_contents;
	void		function(gpointer instnce, guint signal_id, GQuark detail)
			g_signal_stop_emission;
	void		function(gpointer instnce, gchar * detailed_signal)
			g_signal_stop_emission_by_name;
	gulong		function(guint signal_id, GQuark detail, GSignalEmissionHook hook_func, gpointer hook_data, GDestroyNotify data_destroy)
			g_signal_add_emission_hook;
	void		function(guint signal_id, gulong hook_id)
			g_signal_remove_emission_hook;
	gboolean		function(gpointer instnce, guint signal_id, GQuark detail, gboolean may_be_blocked)
			g_signal_has_handler_pending;
	gulong		function(gpointer instnce, guint signal_id, GQuark detail, GClosure * closure, gboolean after)
			g_signal_connect_closure_by_id;
	gulong		function(gpointer instnce, gchar * detailed_signal, GClosure * closure, gboolean after)
			g_signal_connect_closure;
	gulong		function(gpointer instnce, gchar * detailed_signal, GCallback c_handler, gpointer data, GClosureNotify destroy_data, GConnectFlags connect_flags)
			g_signal_connect_data;
	void		function(gpointer instnce, gulong handler_id)
			g_signal_handler_block;
	void		function(gpointer instnce, gulong handler_id)
			g_signal_handler_unblock;
	void		function(gpointer instnce, gulong handler_id)
			g_signal_handler_disconnect;
	gboolean		function(gpointer instnce, gulong handler_id)
			g_signal_handler_is_connected;
	gulong		function(gpointer instnce, GSignalMatchType mask, guint signal_id, GQuark detail, GClosure * closure, gpointer func, gpointer data)
			g_signal_handler_find;
	guint		function(gpointer instnce, GSignalMatchType mask, guint signal_id, GQuark detail, GClosure * closure, gpointer func, gpointer data)
			g_signal_handlers_block_matched;
	guint		function(gpointer instnce, GSignalMatchType mask, guint signal_id, GQuark detail, GClosure * closure, gpointer func, gpointer data)
			g_signal_handlers_unblock_matched;
	guint		function(gpointer instnce, GSignalMatchType mask, guint signal_id, GQuark detail, GClosure * closure, gpointer func, gpointer data)
			g_signal_handlers_disconnect_matched;
	void		function(guint signal_id, GType instnce_type, GClosure * class_closure)
			g_signal_override_class_closure;
	void		function(GValue * instnce_and_params, GValue * return_value)
			g_signal_chain_from_overridden;
	gpointer		function(GType object_type, gchar * first_property_name,...)
			g_object_new;
	gpointer		function(GType object_type, guint n_parameters, GParameter * parameters)
			g_object_newv;
	GObject*		function(GType object_type, gchar * first_property_name, vaList var_args)
			g_object_new_valist;
	void		function(gpointer object, gchar * first_property_name,...)
			g_object_set;
	void		function(gpointer object, gchar * first_property_name,...)
			g_object_get;
	gpointer		function(gpointer object, gchar * signal_spec,...)
			g_object_connect;
	void		function(gpointer object, gchar * signal_spec,...)
			g_object_disconnect;
	void		function(GObject * object, gchar * first_property_name, vaList var_args)
			g_object_set_valist;
	void		function(GObject * object, gchar * first_property_name, vaList var_args)
			g_object_get_valist;
	void		function(GObject * object, gchar * property_name, GValue * value)
			g_object_set_property;
	void		function(GObject * object, gchar * property_name, GValue * value)
			g_object_get_property;
	void		function(GObject * object)
			g_object_freeze_notify;
	void		function(GObject * object, gchar * property_name)
			g_object_notify;
	void		function(GObject * object)
			g_object_thaw_notify;
	gpointer		function(gpointer object)
			g_object_ref;
	void		function(gpointer object)
			g_object_unref;
	void		function(GObject * object, GWeakNotify notify, gpointer data)
			g_object_weak_ref;
	void		function(GObject * object, GWeakNotify notify, gpointer data)
			g_object_weak_unref;
	void		function(GObject * object, gpointer * weak_pointer_location)
			g_object_add_weak_pointer;
	void		function(GObject * object, gpointer * weak_pointer_location)
			g_object_remove_weak_pointer;
	gpointer		function(GObject * object, GQuark quark)
			g_object_get_qdata;
	void		function(GObject * object, GQuark quark, gpointer data)
			g_object_set_qdata;
	void		function(GObject * object, GQuark quark, gpointer data, GDestroyNotify destroy)
			g_object_set_qdata_full;
	gpointer		function(GObject * object, GQuark quark)
			g_object_steal_qdata;
	gpointer		function(GObject * object, gchar * key)
			g_object_get_data;
	void		function(GObject * object, gchar * key, gpointer data)
			g_object_set_data;
	void		function(GObject * object, gchar * key, gpointer data, GDestroyNotify destroy)
			g_object_set_data_full;
	gpointer		function(GObject * object, gchar * key)
			g_object_steal_data;
	void		function(GObject * object, GClosure * closure)
			g_object_watch_closure;
	GClosure*		function(GCallback callback_func, GObject * object)
			g_cclosure_new_object;
	GClosure*		function(GCallback callback_func, GObject * object)
			g_cclosure_new_object_swap;
	GClosure*		function(guint sizeof_closure, GObject * object)
			g_closure_new_object;
	void		function(GValue * value, gpointer v_object)
			g_value_set_object;
	gpointer		function(GValue * value)
			g_value_get_object;
	GObject*		function(GValue * value)
			g_value_dup_object;
	void		function()
			g_type_init;
			
//	// added manually by Antonio Monteiro
//			
//	gboolean	 function          (GTypeInstance      *instanc)
//			g_type_check_instance;
//	GTypeInstance*   function     (GTypeInstance      *instanc,
//							 GType               iface_type)
//			g_type_check_instance_cast;
//	gboolean     function	(GTypeInstance      *instanc,
//							 GType               iface_type)
//			    g_type_check_instance_is_a;
//	GTypeClass*  function        (GTypeClass         *g_class,
//							 GType               is_a_type)
//			    g_type_check_class_cast;
//	gboolean     function(GTypeClass         *g_class,
//							 GType               is_a_type)
//			    g_type_check_class_is_a        ;
//	gboolean	 function(GType		     type)
//			g_type_check_is_value_type     ;
//	gboolean	 function(GValue		    *value)
//			g_type_check_value             ;
//	gboolean	 function(GValue		    *value,
//							 GType		     type)
//			g_type_check_value_holds	;
//	gboolean         function(GType               type,
//							 guint               flags)
//			g_type_test_flags              ;
//				
			
	gulong		function(gpointer inst, gchar * detailed_signal, GCallback c_handler, gpointer gobject, GConnectFlags connect_flags)
			g_signal_connect_object;
}

Symbol[] gobjectLinks =
[
	{ "g_value_init",  cast(void**)& g_value_init },
	{ "g_value_copy",  cast(void**)& g_value_copy },
	{ "g_value_reset",  cast(void**)& g_value_reset },
	{ "g_value_unset",  cast(void**)& g_value_unset },
	{ "g_value_fits_pointer",  cast(void**)& g_value_fits_pointer },
	{ "g_value_peek_pointer",  cast(void**)& g_value_peek_pointer },
	{ "g_value_type_compatible",  cast(void**)& g_value_type_compatible },
	{ "g_value_type_transformable",  cast(void**)& g_value_type_transformable },
	{ "g_value_transform",  cast(void**)& g_value_transform },
	{ "g_strdup_value_contents",  cast(void**)& g_strdup_value_contents },
	{ "g_object_connect",  cast(void**)& g_object_connect },
	{ "g_signal_stop_emission",  cast(void**)& g_signal_stop_emission },
	{ "g_signal_stop_emission_by_name",  cast(void**)& g_signal_stop_emission_by_name },
	{ "g_signal_add_emission_hook",  cast(void**)& g_signal_add_emission_hook },
	{ "g_signal_remove_emission_hook",  cast(void**)& g_signal_remove_emission_hook },
	{ "g_signal_has_handler_pending",  cast(void**)& g_signal_has_handler_pending },
	{ "g_signal_connect_closure_by_id",  cast(void**)& g_signal_connect_closure_by_id },
	{ "g_signal_connect_closure",  cast(void**)& g_signal_connect_closure },
	{ "g_signal_connect_data",  cast(void**)& g_signal_connect_data },
	{ "g_signal_handler_block",  cast(void**)& g_signal_handler_block },
	{ "g_signal_handler_unblock",  cast(void**)& g_signal_handler_unblock },
	{ "g_signal_handler_disconnect",  cast(void**)& g_signal_handler_disconnect },
	{ "g_signal_handler_is_connected",  cast(void**)& g_signal_handler_is_connected },
	{ "g_signal_handler_find",  cast(void**)& g_signal_handler_find },
	{ "g_signal_handlers_block_matched",  cast(void**)& g_signal_handlers_block_matched },
	{ "g_signal_handlers_unblock_matched",  cast(void**)& g_signal_handlers_unblock_matched },
	{ "g_signal_handlers_disconnect_matched",  cast(void**)& g_signal_handlers_disconnect_matched },
	{ "g_signal_override_class_closure",  cast(void**)& g_signal_override_class_closure },
	{ "g_signal_chain_from_overridden",  cast(void**)& g_signal_chain_from_overridden },
	{ "g_object_new",  cast(void**)& g_object_new },
	{ "g_object_newv",  cast(void**)& g_object_newv },
	{ "g_object_new_valist",  cast(void**)& g_object_new_valist },
	{ "g_object_set",  cast(void**)& g_object_set },
	{ "g_object_get",  cast(void**)& g_object_get },
	{ "g_object_connect",  cast(void**)& g_object_connect },
	{ "g_object_disconnect",  cast(void**)& g_object_disconnect },
	{ "g_object_set_valist",  cast(void**)& g_object_set_valist },
	{ "g_object_get_valist",  cast(void**)& g_object_get_valist },
	{ "g_object_set_property",  cast(void**)& g_object_set_property },
	{ "g_object_get_property",  cast(void**)& g_object_get_property },
	{ "g_object_freeze_notify",  cast(void**)& g_object_freeze_notify },
	{ "g_object_notify",  cast(void**)& g_object_notify },
	{ "g_object_thaw_notify",  cast(void**)& g_object_thaw_notify },
	{ "g_object_ref",  cast(void**)& g_object_ref },
	{ "g_object_unref",  cast(void**)& g_object_unref },
	{ "g_object_weak_ref",  cast(void**)& g_object_weak_ref },
	{ "g_object_weak_unref",  cast(void**)& g_object_weak_unref },
	{ "g_object_add_weak_pointer",  cast(void**)& g_object_add_weak_pointer },
	{ "g_object_remove_weak_pointer",  cast(void**)& g_object_remove_weak_pointer },
	{ "g_object_get_qdata",  cast(void**)& g_object_get_qdata },
	{ "g_object_set_qdata",  cast(void**)& g_object_set_qdata },
	{ "g_object_set_qdata_full",  cast(void**)& g_object_set_qdata_full },
	{ "g_object_steal_qdata",  cast(void**)& g_object_steal_qdata },
	{ "g_object_get_data",  cast(void**)& g_object_get_data },
	{ "g_object_set_data",  cast(void**)& g_object_set_data },
	{ "g_object_set_data_full",  cast(void**)& g_object_set_data_full },
	{ "g_object_steal_data",  cast(void**)& g_object_steal_data },
	{ "g_object_watch_closure",  cast(void**)& g_object_watch_closure },
	{ "g_cclosure_new_object",  cast(void**)& g_cclosure_new_object },
	{ "g_cclosure_new_object_swap",  cast(void**)& g_cclosure_new_object_swap },
	{ "g_closure_new_object",  cast(void**)& g_closure_new_object },
	{ "g_value_set_object",  cast(void**)& g_value_set_object },
	{ "g_value_get_object",  cast(void**)& g_value_get_object },
	{ "g_value_dup_object",  cast(void**)& g_value_dup_object },
	{ "g_signal_connect_object", cast(void**)& g_signal_connect_object },
	{ "g_type_init",  cast(void**)& g_type_init },
	
//	// added manually by Antonio Monteiro
//	
//	{ "g_type_check_instance",  cast(void**)& g_type_check_instance},
//	{ "g_type_check_instance_cast",  cast(void**)& g_type_check_instance_cast},
//	{ "g_type_check_instance_is_a",  cast(void**)& g_type_check_instance_is_a},
//	{ "g_type_check_class_cast",  cast(void**)& g_type_check_class_cast},
//	{ "g_type_check_class_is_a",  cast(void**)& g_type_check_class_is_a        },
//	{ "g_type_check_is_value_type",  cast(void**)& g_type_check_is_value_type     },
//	{ "g_type_check_value",  cast(void**)& g_type_check_value             },
//	{ "g_type_check_value_holds",  cast(void**)& g_type_check_value_holds	},
//	{ "g_type_test_flags",  cast(void**)& g_type_test_flags            },
				

];