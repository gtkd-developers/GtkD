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

module dui.TextTag;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.ObjectG;

public:

alias GObject GtkTextTag;

public:
struct GtkTextAppearance;
struct GtkTextAttributes;

private:
extern(C)
{
	GType gtk_text_tag_get_type();
	GtkTextTag * gtk_text_tag_new(gchar * name);
	gint gtk_text_tag_get_priority(GtkTextTag * tag);
	void gtk_text_tag_set_priority(GtkTextTag * tag, gint priority);
	//gboolean gtk_text_tag_event(GtkTextTag * tag, GObject * event_object, GdkEvent * event, GtkTextIter * iter);
	GType gtk_text_attributes_get_type();
	GtkTextAttributes * gtk_text_attributes_new();
	GtkTextAttributes * gtk_text_attributes_copy(GtkTextAttributes * src);
	void gtk_text_attributes_copy_values(GtkTextAttributes * src, GtkTextAttributes * dest);
	void gtk_text_attributes_unref(GtkTextAttributes * values);
	void gtk_text_attributes_ref(GtkTextAttributes * values);
};

/**
 * Text Attributes
 */
public:
class TextAttributes
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_text_attributes_get_type();
	}

	GtkTextAttributes* gtkTextAttributes;

	/**
	 * Creates a new TextAttributes from a GtkTextAttributes
	 * @param gtkTextAttributes
	 */
	package this(GtkTextAttributes* gtkTextAttributes)
	{
		this.gtkTextAttributes = gtkTextAttributes;
	}

	public:

	/**
	 * gets the gtk structure
	 */
	GtkTextAttributes* getAtt()
	{
		return gtkTextAttributes;
	}

	/**
	 * Creates a new TextAttributes
	 */
	this()
	{
		this(gtk_text_attributes_new());
	}

	/**
	 * Creates a new TextAttributes from a copy of an existing
	 * @return a new TextAttributes object
	 */
	TextAttributes copy()
	{
		return new TextAttributes(gtk_text_attributes_copy(getAtt()));
	}


	/**
	 * Copy the values from another text attributes
	 * @param from the TextAttributes to copy from
	 */
	void copyFrom(TextAttributes from)
	{
		gtk_text_attributes_copy_values(from.getAtt(), getAtt());
	}

	/**
	 * unref
	 */
	void unref()
	{
		gtk_text_attributes_unref(getAtt());
	}

	/**
	 * ref
	 */
	void ref()
	{
		gtk_text_attributes_ref(getAtt());
	}

};

public:
enum TagProperty{
  BACKGROUND, //					gchararray			 : Write
  BACKGROUND_FULL_HEIGHT, //		gboolean			 : Read / Write
  BACKGROUND_FULL_HEIGHT_SET, //	gboolean			 : Read / Write
  BACKGROUND_GDK, //				GdkColor			 : Read / Write
  BACKGROUND_SET, //				gboolean			 : Read / Write
  BACKGROUND_STIPPLE, //			GdkPixmap			 : Read / Write
  BACKGROUND_STIPPLE_SET, //		gboolean			 : Read / Write
  DIRECTION, //						GtkTextDirection	 : Read / Write
  EDITABLE, //						gboolean			 : Read / Write
  EDITABLE_SET, //					gboolean			 : Read / Write
  FAMILY, //						gchararray			 : Read / Write
  FAMILY_SET, //					gboolean			 : Read / Write
  FONT, //							gchararray			 : Read / Write
  FONT_DESC, //						PangoFontDescription : Read / Write
  FOREGROUND, //					gchararray			 : Write
  FOREGROUND_GDK, //				GdkColor			 : Read / Write
  FOREGROUND_SET, //				gboolean			 : Read / Write
  FOREGROUND_STIPPLE, //			GdkPixmap			 : Read / Write
  FOREGROUND_STIPPLE_SET, //		gboolean			 : Read / Write
  INDENT, //						gint				 : Read / Write
  INDENT_SET, //					gboolean			 : Read / Write
  INVISIBLE, //						gboolean			 : Read / Write
  INVISIBLE_SET, //					gboolean			 : Read / Write
  JUSTIFICATION, //					GtkJustification	 : Read / Write
  JUSTIFICATION_SET, //				gboolean			 : Read / Write
  LANGUAGE, //						gchararray			 : Read / Write
  LANGUAGE_SET, //					gboolean			 : Read / Write
  LEFT_MARGIN, //					gint				 : Read / Write
  LEFT_MARGIN_Set, //				gboolean			 : Read / Write
  NAME, //							gchararray			 : Read / Write / Construct Only
  PIXELS_ABOVE_LINES, //			gint				 : Read / Write
  PIXELS_ABOVE_LINES_SET, //		gboolean			 : Read / Write
  PIXELS_BELOW_LINES, //			gint				 : Read / Write
  PIXELS_BELOW_LINES_SET, //		gboolean			 : Read / Write
  PIXELS_INSIDE_WRAP, //			gint				 : Read / Write
  PIXELS_INSIDE_WRAP_SET, //		gboolean			 : Read / Write
  RIGHT_MARGIN, //					gint				 : Read / Write
  RIGHT_MARGIN_SET, //				gboolean			 : Read / Write
  RISE, //							gint				 : Read / Write
  RISE_SET, //						gboolean			 : Read / Write
  SCALE, //							gdouble				 : Read / Write
  SCALE_SET, //						gboolean			 : Read / Write
  SIZE, //							gint				 : Read / Write
  SIZE_POINTS, //					gdouble				 : Read / Write
  SIZE_SET, //						gboolean			 : Read / Write
  STRETCH, //						PangoStretch		 : Read / Write
  STRETCH_SET, //					gboolean			 : Read / Write
  STRIKETHROUGH, //					gboolean			 : Read / Write
  STRIKETHROUGH_SET, //				gboolean			 : Read / Write
  STYLE, //							PangoStyle			 : Read / Write
  STYLE_SET, //						gboolean			 : Read / Write
  TABS, //							PangoTabArray		 : Read / Write
  TABS_SET, //						gboolean			 : Read / Write
  UNDERLINE, //						PangoUnderline		 : Read / Write
  UNDERLINE_SET, //					gboolean			 : Read / Write
  VARIANT, //						PangoVariant		 : Read / Write
  VARIANT_SET, //					gboolean			 : Read / Write
  WEIGHT, //						gint				 : Read / Write
  WEIGHT_SET, //					gboolean			 : Read / Write
  WRAP_MODE, //						GtkWrapMode			 : Read / Write
  WRAP_MODE_SET, //					gboolean			 : Read / Write
};


public:
char [][] TagPropertyDesc = [
  "background", //			 gchararray			 : Write
  "background-full-height", // gboolean			 : Read / Write
  "background-full-height-set", // gboolean		 : Read / Write
  "background-gdk", //		 GdkColor			 : Read / Write
  "background-set", //		 gboolean			 : Read / Write
  "background-stipple", //	 GdkPixmap			 : Read / Write
  "background-stipple-set", // gboolean			 : Read / Write
  "direction", //			 GtkTextDirection	 : Read / Write
  "editable", //			 gboolean			 : Read / Write
  "editable-set", //		 gboolean			 : Read / Write
  "family", //				 gchararray			 : Read / Write
  "family-set", //			 gboolean			 : Read / Write
  "font", //				 gchararray			 : Read / Write
  "font-desc", //			 PangoFontDescription: Read / Write
  "foreground", //			 gchararray			 : Write
  "foreground-gdk", //		 GdkColor			 : Read / Write
  "foreground-set", //		 gboolean			 : Read / Write
  "foreground-stipple", //	 GdkPixmap			 : Read / Write
  "foreground-stipple-set", // gboolean			 : Read / Write
  "indent", //				 gint				 : Read / Write
  "indent-set", //			 gboolean			 : Read / Write
  "invisible", //			 gboolean			 : Read / Write
  "invisible-set", //		 gboolean			 : Read / Write
  "justification", //		 GtkJustification	 : Read / Write
  "justification-set", //	 gboolean			 : Read / Write
  "language", //			 gchararray			 : Read / Write
  "language-set", //		 gboolean			 : Read / Write
  "left-margin", //			 gint				 : Read / Write
  "left-margin-set", //		 gboolean			 : Read / Write
  "name", //				gchararray			 : Read / Write / Construct Only
  "pixels-above-lines", //	gint				 : Read / Write
  "pixels-above-lines-set", //gboolean			 : Read / Write
  "pixels-below-lines", //	gint				 : Read / Write
  "pixels-below-lines-set", //gboolean			 : Read / Write
  "pixels-inside-wrap", //	gint				 : Read / Write
  "pixels-inside-wrap-set", //gboolean			 : Read / Write
  "right-margin", //		gint				 : Read / Write
  "right-margin-set", //	gboolean			 : Read / Write
  "rise", //				gint				 : Read / Write
  "rise-set", //			gboolean			 : Read / Write
  "scale", //				gdouble				 : Read / Write
  "scale-set", //			gboolean			 : Read / Write
  "size", //				gint				 : Read / Write
  "size-points", //			gdouble				 : Read / Write
  "size-set", //			gboolean			 : Read / Write
  "stretch", //				PangoStretch		 : Read / Write
  "stretch-set", //			gboolean			 : Read / Write
  "strikethrough", //		gboolean			 : Read / Write
  "strikethrough-set", //	gboolean			 : Read / Write
  "style", //				PangoStyle			 : Read / Write
  "style-set", //			gboolean			 : Read / Write
  "tabs", //				PangoTabArray		 : Read / Write
  "tabs-set", //			gboolean			 : Read / Write
  "underline", //			PangoUnderline		 : Read / Write
  "underline-set", //		gboolean			 : Read / Write
  "variant", //				PangoVariant		 : Read / Write
  "variant-set", //			gboolean			 : Read / Write
  "weight", //				gint				 : Read / Write
  "weight-set", //			gboolean			 : Read / Write
  "wrap-mode", //			GtkWrapMode			 : Read / Write
  "wrap-mode-set", //		gboolean			 : Read / Write
];

/**
 * A tag that can be applied to text in a TextBuffer
 * \todo a smart way to set and get properties
 */
public:
class TextTag : ObjectG
{

	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "A tag that can be applied to text in a TextBuffer";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_text_tag_get_type();
	}

	package:
	this(GObject * gObject)
	{
		super(cast(GObject *) gObject);
	}

	public:


	this(char[] name)
	{
		this(gtk_text_tag_new(cChar(name)));
	}

	/**
	 * Gets the priority
	 * @return the priority
	 */
	gint getPriority()
	{
		return gtk_text_tag_get_priority(obj());
	}

	/**
	 * Set priority
	 * @param priority the priprity
	 */
	void setPriority(gint priority)
	{
		gtk_text_tag_set_priority(obj(), priority);
	}

	//gboolean gtk_text_tag_event(obj(), GObject * event_object, GdkEvent * event, GtkTextIter * iter);

//	void setProperty(TagProperty property, char[] value)
//	void setProperty(TagProperty property, bit value)
//	void setProperty(TagProperty property, gint value)
//	void setProperty(TagProperty property, Color value)
//	void setProperty(TagProperty property, Pixmap value)
//	void setProperty(TagProperty property, TextDirection value)
//	void setProperty(TagProperty property, PangoFontDescription value)
//	void setProperty(TagProperty property, Justification value)
//	void setProperty(TagProperty property, gdouble value)
//	void setProperty(TagProperty property, PangoStretch value)
//	void setProperty(TagProperty property, PangoStyle value)
//	void setProperty(TagProperty property, PangoTabArray value)
//	void setProperty(TagProperty property, PangoUnderline value)
//	void setProperty(TagProperty property, PangoVariant value)
//	void setProperty(TagProperty property, WrapMode value)
//
	
}
