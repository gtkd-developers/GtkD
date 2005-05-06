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

module dui.DUIObject;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.ObjectG;
private import lib.gtk;

public:
class DUIObject : ObjectG
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return "GtkObject";}
		char[] description(){return "The base for Widgets and others";}
		char[] author(){return "Antonio";}
	}
	
	/**
	 * 
	 */
	protected:
	this(GtkObject * gtkObject)
	{
		super(cast(GObject *) gtkObject);
	}

	public:
	void* gtk()
	{
		return cast(void*)gObject;
	}

	/**
	 * Get the GtkObject
	 * @return the GTK GtkObject
	 */
	GtkObject * gtkO()
	{
		return cast(GtkObject*)gObject;
	}

	/**
	 * Creates a DUIObject from a GtkObject
	 * @param gtkObject the GtkObject
	 */
	protected:
	void gtkO(GtkObject * gtkObject)
	{
		super.obj(cast(GObject *) gtkObject);
	}

	/**
	 * Creates a new DUIObject given a type and the first property name
	 */
	public:
	this(GtkType type, char[] firstPropertyName)
	{
		this(gtk_object_new(type, cChar(firstPropertyName),null));
	}

	char [] toString()
	{
		return "DUIObject";
	}
	
	void dump()
	{
		GtkObject* gtkObject = gtkO();
		super.dump();
		printf("\n\t### DuiObject ###\n");
		printf("\tparent_instance %X\n",gtkObject.parent_instance);
		printf("\tflags %X\n",gtkObject.flags);
		
	}

	/**
	 * probably does something i bet ya
	 */
	void sink()
	{
		gtk_object_sink(gtkO());
	}
	
	/**
	 * Probably destroys the GtkObject
	 */
	void destroy()
	{
		gtk_object_destroy(gtkO());
	}

//	// todo humm..... seems that all the following are deprecated
//
//	void setData(char * key, void * data)
//	{
//		gtk_object_set_data(gtkObject, key, data);
//	}
//
//	void * getData(char * key)
//	{
//		return gtk_object_get_data(gtkObject, key);
//	}
//
//	static void * getGTKData(void * gtkwidget, char * key)
//	{
//		return gtk_object_get_data(gtkwidget, key);
//	}

	//int function() clicked;

//	static DUIObject getDUIObject(void * gtkwidget)
//	{
//		return (DUIObject) DUIObject.getGTKData(gtkwidget, "DUIObject\0");
//	}
//
//	DUIObject getDUIObject()
//	{
//		return (DUIObject) getData("DUIObject\0");
//	}

}
