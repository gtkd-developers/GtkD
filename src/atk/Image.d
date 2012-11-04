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
 * inFile  = AtkImage.html
 * outPack = atk
 * outFile = Image
 * strct   = AtkImage
 * realStrct=
 * ctorStrct=
 * clss    = Image
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_image_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Image;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Description
 * AtkImage should be implemented by AtkObject subtypes on behalf of
 * components which display image/pixmap information onscreen, and which
 * provide information (other than just widget borders, etc.) via that
 * image content. For instance, icons, buttons with icons, toolbar
 * elements, and image viewing panes typically should implement AtkImage.
 * AtkImage primarily provides two types of information: coordinate
 * information (useful for screen review mode of screenreaders, and for use
 * by onscreen magnifiers), and descriptive information. The descriptive
 * information is provided for alternative, text-only presentation of the
 * most significant information present in the image.
 */
public class Image
{
	
	/** the main Gtk struct */
	protected AtkImage* atkImage;
	
	
	public AtkImage* getImageStruct()
	{
		return atkImage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkImage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkImage* atkImage)
	{
		this.atkImage = atkImage;
	}
	
	/**
	 */
	
	/**
	 * Gets the position of the image in the form of a point specifying the
	 * images top-left corner.
	 * Params:
	 * x = address of gint to put x coordinate position; otherwise, -1 if value cannot be obtained.
	 * y = address of gint to put y coordinate position; otherwise, -1 if value cannot be obtained.
	 * coordType = specifies whether the coordinates are relative to the screen
	 * or to the components top level window
	 */
	public void getImagePosition(out int x, out int y, AtkCoordType coordType)
	{
		// void atk_image_get_image_position (AtkImage *image,  gint *x,  gint *y,  AtkCoordType coord_type);
		atk_image_get_image_position(atkImage, &x, &y, coordType);
	}
	
	/**
	 * Get a textual description of this image.
	 * Returns: a string representing the image description
	 */
	public string getImageDescription()
	{
		// const gchar * atk_image_get_image_description (AtkImage *image);
		return Str.toString(atk_image_get_image_description(atkImage));
	}
	
	/**
	 * Sets the textual description for this image.
	 * Params:
	 * description = a string description to set for image
	 * Returns: boolean TRUE, or FALSE if operation could not be completed.
	 */
	public int setImageDescription(string description)
	{
		// gboolean atk_image_set_image_description (AtkImage *image,  const gchar *description);
		return atk_image_set_image_description(atkImage, Str.toStringz(description));
	}
	
	/**
	 * Get the width and height in pixels for the specified image.
	 * The values of width and height are returned as -1 if the
	 * values cannot be obtained (for instance, if the object is not onscreen).
	 * Params:
	 * width = filled with the image width, or -1 if the value cannot be obtained.
	 * height = filled with the image height, or -1 if the value cannot be obtained.
	 */
	public void getImageSize(out int width, out int height)
	{
		// void atk_image_get_image_size (AtkImage *image,  gint *width,  gint *height);
		atk_image_get_image_size(atkImage, &width, &height);
	}
	
	/**
	 * Since ATK 1.12
	 * Returns: a string corresponding to the POSIX LC_MESSAGES locale used by the image description, or NULL if the image does not specify a locale.
	 */
	public string getImageLocale()
	{
		// const gchar * atk_image_get_image_locale (AtkImage *image);
		return Str.toString(atk_image_get_image_locale(atkImage));
	}
}
