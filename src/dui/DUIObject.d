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
private import dui.Utils;
private import dui.ObjectG;

public:
version(GTK240)
{
/* Stock IDs (not all are stock items; some are images only) */
enum Stock{
DIALOG_INFO,
DIALOG_WARNING,
DIALOG_ERROR,
DIALOG_QUESTION,
DND,
DND_MULTIPLE,
ADD,
APPLY,
BOLD,
CANCEL,
CDROM,
CLEAR,
CLOSE,
COLOR_PICKER,
CONVERT,
COPY,
CUT,
DELETE,
EXECUTE,
FIND,
FIND_AND_REPLACE,
FLOPPY,
GOTO_BOTTOM,
GOTO_FIRST,
GOTO_LAST,
GOTO_TOP,
GO_BACK,
GO_DOWN,
GO_FORWARD,
GO_UP,
HARDDISK,
HELP,
HOME,
INDEX,
INDENT,
UNINDENT,
ITALIC,
JUMP_TO,
JUSTIFY_CENTER,
JUSTIFY_FILL,
JUSTIFY_LEFT,
JUSTIFY_RIGHT,
MISSING_IMAGE,
NETWORK,
NEW,
NO,
OK,
OPEN,
PASTE,
PREFERENCES,
PRINT,
PRINT_PREVIEW,
PROPERTIES,
QUIT,
REDO,
REFRESH,
REMOVE,
REVERT_TO_SAVED,
SAVE,
SAVE_AS,
SELECT_COLOR,
SELECT_FONT,
SORT_ASCENDING,
SORT_DESCENDING,
SPELL_CHECK,
STOP,
STRIKETHROUGH,
UNDELETE,
UNDERLINE,
UNDO,
YES,
ZOOM_100,
ZOOM_FIT,
ZOOM_IN,
ZOOM_OUT
};

public:
char [][] StockDesc = [
"gtk-dialog-info",
"gtk-dialog-warning",
"gtk-dialog-error",
"gtk-dialog-question",
"gtk-dnd",
"gtk-dnd-multiple",
"gtk-add",
"gtk-apply",
"gtk-bold",
"gtk-cancel",
"gtk-cdrom",
"gtk-clear",
"gtk-close",
"gtk-color-picker",
"gtk-convert",
"gtk-copy",
"gtk-cut",
"gtk-delete",
"gtk-execute",
"gtk-find",
"gtk-find-and-replace",
"gtk-floppy",
"gtk-goto-bottom",
"gtk-goto-first",
"gtk-goto-last",
"gtk-goto-top",
"gtk-go-back",
"gtk-go-down",
"gtk-go-forward",
"gtk-go-up",
"gtk-harddisk",
"gtk-help",
"gtk-home",
"gtk-index",
"gtk-indent",
"gtk-unindent",
"gtk-italic",
"gtk-jump-to",
"gtk-justify-center",
"gtk-justify-fill",
"gtk-justify-left",
"gtk-justify-right",
"gtk-missing-image",
"gtk-network",
"gtk-new",
"gtk-no",
"gtk-ok",
"gtk-open",
"gtk-paste",
"gtk-preferences",
"gtk-print",
"gtk-print-preview",
"gtk-properties",
"gtk-quit",
"gtk-redo",
"gtk-refresh",
"gtk-remove",
"gtk-revert-to-saved",
"gtk-save",
"gtk-save-as",
"gtk-select-color",
"gtk-select-font",
"gtk-sort-ascending",
"gtk-sort-descending",
"gtk-spell-check",
"gtk-stop",
"gtk-strikethrough",
"gtk-undelete",
"gtk-underline",
"gtk-undo",
"gtk-yes",
"gtk-zoom-100",
"gtk-zoom-fit",
"gtk-zoom-in",
"gtk-zoom-out"];

}
else
{
/* Stock IDs (not all are stock items; some are images only) */
enum Stock{
DIALOG_INFO,
DIALOG_WARNING,
DIALOG_ERROR,
DIALOG_QUESTION,
DND,
DND_MULTIPLE,
ADD,
APPLY,
BOLD,
CANCEL,
CDROM,
CLEAR,
CLOSE,
COLOR_PICKER,
CONVERT,
COPY,
CUT,
DELETE,
EXECUTE,
FIND,
FIND_AND_REPLACE,
FLOPPY,
GOTO_BOTTOM,
GOTO_FIRST,
GOTO_LAST,
GOTO_TOP,
GO_BACK,
GO_DOWN,
GO_FORWARD,
GO_UP,
HELP,
HOME,
INDEX,
ITALIC,
JUMP_TO,
JUSTIFY_CENTER,
JUSTIFY_FILL,
JUSTIFY_LEFT,
JUSTIFY_RIGHT,
MISSING_IMAGE,
NEW,
NO,
OK,
OPEN,
PASTE,
PREFERENCES,
PRINT,
PRINT_PREVIEW,
PROPERTIES,
QUIT,
REDO,
REFRESH,
REMOVE,
REVERT_TO_SAVED,
SAVE,
SAVE_AS,
SELECT_COLOR,
SELECT_FONT,
SORT_ASCENDING,
SORT_DESCENDING,
SPELL_CHECK,
STOP,
STRIKETHROUGH,
UNDELETE,
UNDERLINE,
UNDO,
YES,
ZOOM_100,
ZOOM_FIT,
ZOOM_IN,
ZOOM_OUT
};

public:
char [][] StockDesc = [
"gtk-dialog-info",
"gtk-dialog-warning",
"gtk-dialog-error",
"gtk-dialog-question",
"gtk-dnd",
"gtk-dnd-multiple",
"gtk-add",
"gtk-apply",
"gtk-bold",
"gtk-cancel",
"gtk-cdrom",
"gtk-clear",
"gtk-close",
"gtk-color-picker",
"gtk-convert",
"gtk-copy",
"gtk-cut",
"gtk-delete",
"gtk-execute",
"gtk-find",
"gtk-find-and-replace",
"gtk-floppy",
"gtk-goto-bottom",
"gtk-goto-first",
"gtk-goto-last",
"gtk-goto-top",
"gtk-go-back",
"gtk-go-down",
"gtk-go-forward",
"gtk-go-up",
"gtk-help",
"gtk-home",
"gtk-index",
"gtk-italic",
"gtk-jump-to",
"gtk-justify-center",
"gtk-justify-fill",
"gtk-justify-left",
"gtk-justify-right",
"gtk-missing-image",
"gtk-new",
"gtk-no",
"gtk-ok",
"gtk-open",
"gtk-paste",
"gtk-preferences",
"gtk-print",
"gtk-print-preview",
"gtk-properties",
"gtk-quit",
"gtk-redo",
"gtk-refresh",
"gtk-remove",
"gtk-revert-to-saved",
"gtk-save",
"gtk-save-as",
"gtk-select-color",
"gtk-select-font",
"gtk-sort-ascending",
"gtk-sort-descending",
"gtk-spell-check",
"gtk-stop",
"gtk-strikethrough",
"gtk-undelete",
"gtk-underline",
"gtk-undo",
"gtk-yes",
"gtk-zoom-100",
"gtk-zoom-fit",
"gtk-zoom-in",
"gtk-zoom-out"];
}

private:
extern(C) GtkObject * gtk_object_new(GtkType type, gchar * first_property_name,...);

extern(C) void gtk_object_sink(GtkObject * object);
extern(C) void gtk_object_destroy(GtkObject * object);

//extern(C) void gtk_object_set_data(void * object, char * key, void * data);
//extern(C) void gtk_object_set_data_full(void * object, char * key, void * data, int destroy);
//extern(C) void gtk_object_remove_data(void * object, char * key);
//extern(C) void * gtk_object_get_data(void * object, char * key);
//extern(C) void gtk_object_remove_no_notify(void * object, char * key);

/**
 *
 */

enum GtkObjectFlags {
	GTK_IN_DESTRUCTION = 1 << 0, /* Used internally during dispose */
	GTK_FLOATING = 1 << 1, GTK_RESERVED_1 = 1 << 2, GTK_RESERVED_2 = 1 << 3};


/**
 * The wrapper for GtkObject
 */

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
