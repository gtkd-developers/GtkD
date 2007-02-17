/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

module gsvc.gsvtypes;


public import gtkc.gtktypes;


/**
 * typedef GtkTextMark GtkSourceMarker;
 */
public alias GtkTextMark GtkSourceMarker;
public enum GtkSourceSearchFlags
{
	VISIBLE_ONLY = 1 << 0,
	TEXT_ONLY = 1 << 1,
	CASE_INSENSITIVE = 1 << 2
	/+* Possible future plans: SEARCH_REGEXP +/
}
alias GtkSourceSearchFlags SourceSearchFlags;

public enum GtkSourceTagStyleMask
{
	USE_BACKGROUND = 1 << 0, /+*< nick=useBackground >+/
	USE_FOREGROUND = 1 << 1 /+*< nick=useForeground >+/
}
alias GtkSourceTagStyleMask SourceTagStyleMask;


/**
 * Main Gtk struct.
 */
public struct GtkSourceView{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceBuffer{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceLanguage{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceLanguagesManager{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceStyleScheme{}


public struct GtkSourceStyleSchemeClass{}
// GTypeInterface baseIface;
// GtkSourceStyleScheme.html
// /+* signals +/
// GtkSourceStyleScheme.html
// void (* styleChanged) (GtkSourceStyleScheme *scheme,
// GtkSourceStyleScheme.html
// char *tagId);
// GtkSourceStyleScheme.html
// /+* vtable +/
// GtkSourceStyleScheme.html
// char * (* getName) (GtkSourceStyleScheme *scheme);
// GtkSourceStyleScheme.html
// GtkSourceTagStyle * (* getTagStyle) (GtkSourceStyleScheme *scheme,
// GtkSourceStyleScheme.html
// char *styleName);
// GtkSourceStyleScheme.html
// GSList * (* getStyleNames) (GtkSourceStyleScheme *scheme);
// GtkSourceStyleScheme.html
// /+* Padding for future expansion +/
// GtkSourceStyleScheme.html
// void (*_GtkSourceReserved1) (void);
// GtkSourceStyleScheme.html
// void (*_GtkSourceReserved2) (void);
// GtkSourceStyleScheme.html
// void (*_GtkSourceReserved3) (void);
// GtkSourceStyleScheme.html
// void (*_GtkSourceReserved4) (void);
// GtkSourceStyleScheme.html


/**
 * Main Gtk struct.
 */
public struct GtkSourceTag{}


public struct GtkSourceTagClass{}


public struct GtkSyntaxTag{}


public struct GtkSyntaxTagClass{}


public struct GtkPatternTag{}


public struct GtkPatternTagClass{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceTagTable{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceTagStyle{}
// /+* readonly +/
// gtksourceview-GtkSourceTagStyle.html
// int isDefault;
// gtksourceview-GtkSourceTagStyle.html
// uint mask;
// gtksourceview-GtkSourceTagStyle.html
// GdkColor foreground;
// gtksourceview-GtkSourceTagStyle.html
// GdkColor background;
// gtksourceview-GtkSourceTagStyle.html
// int italic;
// gtksourceview-GtkSourceTagStyle.html
// int bold;
// gtksourceview-GtkSourceTagStyle.html
// int underline;
// gtksourceview-GtkSourceTagStyle.html
// int strikethrough;
// gtksourceview-GtkSourceTagStyle.html
// /+* Reserved for future expansion +/
// gtksourceview-GtkSourceTagStyle.html
// byte reserved[16];
// gtksourceview-GtkSourceTagStyle.html

