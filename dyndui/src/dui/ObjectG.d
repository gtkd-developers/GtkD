/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.ObjectG;

private import dui.Utils;

private import def.Types;
private import def.Constants;

private import dui.OGTK;

private import ddi.Value;
private import lib.gobject;

public:

debug(status)
{
	public interface StatusInterface
	{
		int complete();
		char[] gtkName();
		char[] description();
		char[] author();
	}
}
else
{
	public interface StatusInterface{}
}


/**
 * Base class for DUIObject.
 * This class wraps GObject, DUIObject wraps GtkObject and Widget wraps GtkWidget.
 * \todo consider setting the ObjectG on the GObject data so that the ObjectG will
 *       have the same live span as the GObject (reusable from the Dispatcher for instance)
 */

// moved out -------------------
   private import dool.String;
   private import std.gc;
// -----------------------------

public:
class ObjectG : StatusInterface , OGTK
{
	debug(status)
	{
		int complete(){return 80;}
		char[] gtkName(){return "GObject";}
		char[] description(){return "Base class for DUIObject";}
		char[] author(){return "Antonio";}
	}
	
	public:

	protected: GObject * gObject;
	//private: char[] actionCommand;

	public:
	
	void* gtk()
	{
		return cast(void*)gObject;
	}

	/**
	 * Creates a ObjectG from a GTK GObject.
	 * This will set a pointer to the ObjectG on the GTK GObject
	 * all the new widget will end up executing this contructor. 
	 */
	this(GObject * gObject)
	{
		this.gObject = gObject;
		if ( gObject !== null )
		{
			//printf("ObjectG.this\n\0");
			setData(new String("GObject"),this);
		}
	}

	/**
	 *
	 */
	public: void dump()
	{
		printf("\n############ Object @ %X\n",gObject);
		printf("\n%.*s", Object.toString());
		printf("\tg_type_instance %X\n",gObject.g_type_instance);
		printf("\tref_count %d\n",gObject.ref_count);
		printf("\tqdata* %X\n",gObject.qdata);
	}

	/**
	 * Gets the GTK GObject that this is wraping
	 */
	public: GObject * obj()
	{
		return gObject;
	}
	
	/**
	 * Gets the GTK GdkObject that this is wraping.
	 * This is the same as obj() but cast to GdkObject
	 */
	public: GdkObject * gdkO()
	{
		return cast(GdkObject*)gObject;
	}
	
//	/**
//	 * Get the ObjectG from the any GtkWidget that we don't
//	 * know the ObjectG wraping
//	 * @return 
//	 */
//	public: static ObjectG getObjectG(void * gtkwidget)
//	{
//		//void * data = ObjectG.getDataG(gtkwidget, "GObject\0");
//		//printf ("getObjectG data for 'GObjectt' = %X\n\0",data);
//		return (ObjectG) ObjectG.getDataG(gtkwidget, "GObject\0");
//	}
//
//	public: static void* getDUIObject(void* gtkObject)
//	{
//		if ( gtkObject === null )
//		{
//			return null;
//		}
//		return getObjectG(gtkObject);
//	}
//
//		
//	/**
//	 * Gets the ObjectG from the GTK GObject
//	 * @return 
//	 */
//	public: ObjectG getGObjectG()
//	{
//		
//		return (ObjectG) getData("GObject\0");
//	}

	/**
	 * sets this ObjectG GTK GObject
	 * @param gObject
	 */
	public: void obj(GObject * gObject)
	{
		this.gObject = gObject;
	}

	/**
	 * Gets the action command used by the listener
	 * @return the actionCommand string
	 */
	public: String getActionCommand()
	{
		return cast(String)getData("_ActionCommand\0");
	}

	/**
	 * Sets the action command used by the listener
	 * @param action
	 * \deprecated
	 */
	public: void setActionCommand(String action)
	{
		setData(new String("_ActionCommand\0"),action);
	}

	/**
	 * Gets the default action name.
	 * From button the action is "clicked" from menu items the action is "activate"
	 * (go figure, well probably there as good reason for it)
	 * \deprecated
	 * @return the default 
	 */
	public: String getDefaultAction()
	{
		return new String("clicked");
	}

	//deprecated
	//{
	//	private: void * [void *] objectMap;
	//}
	

	//void g_object_class_install_property(GObjectClass * oclass, guint property_id, GParamSpec * pspec);

	//GParamSpec * g_object_class_find_property(GObjectClass * oclass, gchar * property_name);

	//GParamSpec * * g_object_class_list_properties(GObjectClass * oclass, guint * n_properties);

	/**
	 * Creates a new ObjectG from a type and set a property
	 */
	public: this(GType object_type, String first_property_name)
	{
		this(cast(GObject * )g_object_new(object_type, first_property_name.toStringz(),null));
	}
	
	
	/**
	 *
	 */
	//this(GType object_type, guint n_parameters, GParameter parameters
	//{
	//	this(g_object_newv(object_type, guint n_parameters, parameters.obj));
	//}

	/**
	 *
	 */
	//GObject * g_object_new_valist(GType object_type, gchar * first_property_name, vaList var_args);

	/**
	 *
	 */
	//void g_object_set(gpointer object, gchar * first_property_name,...);

	/**
	 *
	 */
	//void g_object_get(gpointer object, gchar * first_property_name,...);

	/**
	 * connect
	 * @param signal_spec
	 * @return a pointer
	 * \deprecated use listeners to get object signals
	 */
	public: gpointer connect(String signal_spec)
	{
		return g_object_connect(obj(), signal_spec.toStringz(),null);
	}

	/**
	 * disconnect
	 * @param signal_spec
	 * \deprecated use listeners to get object signals
	 */
	public: void disconnect(String signal_spec)
	{
		g_object_disconnect(obj(), signal_spec.toStringz(),null);
	}

	/**
	 * setVaList
	 * @param first_property_name
	 * @param var_args
	 */
	public: void setVaList(String first_property_name, vaList var_args)
	{
		g_object_set_valist(obj(), first_property_name.toStringz(), var_args);
	}

	/**
	 * getVaList
	 * @param first_property_name
	 * @param var_args
	 */
	public: void getVaList(String first_property_name, vaList var_args)
	{
		g_object_get_valist(obj(), first_property_name.toStringz(), var_args);
	}

	/**
	 * Sets a property from this object
	 * @param property_name
	 * @param value the value to set
	 */
	public: void setProperty(String property_name, GValue * value)
	{
		g_object_set_property(obj(), property_name.toStringz(), value);
	}

	// segfault
	void setProperty(char[] name, bit value)
	{
		setProperty(new String(name), value);
	}
	void setProperty(String name, bit value)
	{
		Value v = new Value(value);
		v.dump();
		g_object_set_property(obj(), name.toStringz(), v.getV());
	}
	
	/**
	 * Gets a property from this object
	 * @param property_name
	 * @param value the default value to use if the property was not found
	 */
	public: void * getProperty(String property_name, GValue * value)
	{
		g_object_get_property(obj(), property_name.toStringz(), value);
		return value;
	}

	/**
	 * freezeNotity ???
	 */
	public: void freezeNotity()
	{
		g_object_freeze_notify(obj());
	}

	/**
	 * notify ???
	 * @param property_name
	 */
	public: void notify(String property_name)
	{
		g_object_notify(obj(), property_name.toStringz());
	}

	/**
	 * thawNotify ???
	 */
	public: void thawNotify()
	{
		g_object_thaw_notify(obj());
	}

	/**
	 * Create a reference to the gtk object so that GTK doens't destroy it
	 * @param object
	 * @return a reference to the object
	 */
	public: gpointer ref(gpointer object)
	{
		return g_object_ref(object);
	}

	/**
	 * Unreference an object. Objects gtk object with no references will be desctroyed by gtk. 
	 * @param object
	 */
	public: void unref(gpointer object)
	{
		g_object_unref(object);
	}

	/**
	 * weakRef
	 * @param notify
	 * @param data
	 */
	public: void weakRef(GWeakNotify notify, gpointer data)
	{
		g_object_weak_ref(obj(), notify, data);
	}

	/**
	 * weakUnref
	 * @param notify
	 * @param data
	 */
	public: void weakUnref(GWeakNotify notify, gpointer data)
	{
		g_object_weak_unref(obj(), notify, data);
	}

	/**
	 * addWeakPointer
	 * @param weak_pointer_location
	 */
	public: void addWeakPointer(gpointer * weak_pointer_location)
	{
		g_object_add_weak_pointer(obj(), weak_pointer_location);
	}

	/**
	 * removeWeakPointer
	 * @param weak_pointer_location
	 */
	public: void removeWeakPointer(gpointer * weak_pointer_location)
	{
		g_object_remove_weak_pointer(obj(), weak_pointer_location);
	}

	/**
	 * getQData
	 * @param quark
	 * @return a pointer ???
	 */
	public: gpointer getQData(GQuark quark)
	{
		return g_object_get_qdata(obj(), quark);
	}

	/**
	 * setQData
	 * @param quark
	 * @param data
	 */
	public: void setQData(GQuark quark, gpointer data)
	{
		g_object_set_qdata(obj(), quark, data);
	}

	/**
	 * setQDataFull
	 * @param quark
	 * @param data
	 * @param destroy
	 */
	public: void setQDataFull(GQuark quark, gpointer data, GDestroyNotify destroy)
	{
		g_object_set_qdata_full(obj(), quark, data,  destroy);
	}

	/**
	 * stealQData
	 * @param quark
	 * @return a pointer to the data
	 */
	public: gpointer stealQData(GQuark quark)
	{
		return g_object_steal_qdata(obj(), quark);
	}

	/**
	 * Sets a pointer on this object's has table
	 * @param key the data identifier
	 * @param data a pointer 
	 */
	public: void setData(String key, gpointer data)
	{
		//printf("setData objectG=%X data=%X type %.*s\n\0",obj(),data,key);
		std.gc.addRoot(data);
		g_object_set_data_full(obj(), key.toStringz(), data, &destroyNotify);
	}
	
	extern(C)
	{
		static void destroyNotify(gpointer* data)
		{
			std.gc.removeRoot(data);
		}
	}
	
	/**
	 * Sets a pointer on an object's has table
	 * @param objG the object
	 * @param key the data identifier
	 * @param data a pointer 
	 */
	public: static void setDataG(ObjectG objG, String key, gpointer data)
	{
		//printf("setData objectG=%X data=%X type %.*s\n\0",obj(),data,key);
		g_object_set_data(objG.obj(), key.toStringz(), data);
	}
	
	/**
	 * Gets a pointer this object's has table
	 * @param key the data identifier
	 * @return a pointer the the data store on the object
	 */
	public: gpointer getData(char[] key)
	{
		//printf("ObjectG.getData key = %.*s\n", key);
		return g_object_get_data(obj(), String.stringz(key));
	}
	
	/**
	 * Gets a pointer this object's has table
	 * @param key the data identifier
	 * @return a pointer the the data store on the object
	 */
	public: gpointer getData(String key)
	{
		//printf("ObjectG.getData key = %.*s\n", key.toString());
		return g_object_get_data(obj(), key.toStringz());
	}

	/**
	 * Gets a pointer an object's has table
	 * @param gObj the object
	 * @param key the data identifier
	 * @return  a pointer the the data store on the object
	 */
	public: static gpointer getDataG(void * gObj, String key)
	{
		return g_object_get_data(cast(GObject*)gObj, key.toStringz());
	}

	/**
	 * setDataFull
	 * @param key
	 * @param data
	 * @param destroy
	 */
	public: void setDataFull(String key, gpointer data, GDestroyNotify destroy)
	{
		g_object_set_data_full(obj(), key.toStringz(), data, destroy);
	}

	/**
	 * stealData
	 * @param key the data identifier
	 * @return  a pointer the the data store on the object
	 */
	public: gpointer stealData(String key)
	{
		return g_object_steal_data(obj(), key.toStringz());
	}

	/**
	 *watchClosure
	 * @param closure
	 */
	public: void watchClosure(GClosure * closure)
	{
		printf("ObjectG.watchClosure 1\n" );
		g_object_watch_closure(obj(), closure);
		printf("ObjectG.watchClosure 2\n" );
		
	}

	/**
	 *
	 */
	//GClosure * cclosureNewObject(GCallback callback_func, GObject gobject)
	//{
	//	return g_cclosure_new_object(callback_func, gobject.obj());
	//}

	
	/**
	 *
	 */
	//GClosure * cclosureNewObjectSwap(GCallback callback_func, GObject object)
	//{
	//	return g_cclosure_new_object_swap(callback_func, object.obj());
	//}

	/**
	 *
	 */
	//GClosure * closureNewObject(guint sizeof_closure, GObject object)
	//{
	//	return g_closure_new_object(sizeof_closure, object.obj());
	//}
	

	/**
	 * setObject
	 * @param value
	 * @param v_object
	 */
	public: void setObject(GValue * value, gpointer v_object)
	{
		g_value_set_object(value, v_object);
	}

	/**
	 * getObject
	 * @param value
	 * @return a pointer
	 */
	public: gpointer getObject(GValue * value)
	{
		return g_value_get_object(value);
	}

	/**
	 * dupObject
	 * @param value
	 * @return a poiter to an GObject
	 */
	public: GObject * dupObject(GValue * value)
	{
		return g_value_dup_object(value);
	}

	/**
	 * signalConnectObject
	 * @param inst
	 * @param detailed_signal
	 * @param c_handler
	 * @param gobject
	 * @param connect_flags
	 * @return a ulong
	 * \deprecated use listeners to get signals from objects
	 */
	public: gulong signalConnectObject(gpointer inst, String detailed_signal, GCallback c_handler, gpointer gobject, GConnectFlags connect_flags)
	{
		return g_signal_connect_object(inst, detailed_signal.toStringz(), c_handler, gobject, connect_flags);
	}
}
