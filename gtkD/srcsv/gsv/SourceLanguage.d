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

/*
 * Conversion parameters:
 * inFile  = GtkSourceLanguage.html
 * outPack = gsv
 * outFile = SourceLanguage
 * strct   = GtkSourceLanguage
 * realStrct=
 * ctorStrct=
 * clss    = SourceLanguage
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gsv.SourceStyleScheme
 * 	- glib.Str
 * structWrap:
 * 	- GtkSourceStyleScheme* -> SourceStyleScheme
 * module aliases:
 * local aliases:
 */

module gsv.SourceLanguage;

private import gsvc.gsvtypes;

private import gsvc.gsv;

private import gsv.SourceStyleScheme;
private import glib.Str;



/**
 * Description
 */
private import gobject.ObjectG;
public class SourceLanguage : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceLanguage* gtkSourceLanguage;
	
	
	public GtkSourceLanguage* getSourceLanguageStruct()
	{
		return gtkSourceLanguage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceLanguage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceLanguage* gtkSourceLanguage)
	{
		super(cast(GObject*)gtkSourceLanguage);
		this.gtkSourceLanguage = gtkSourceLanguage;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(char[], SourceLanguage)[] onTagStyleChangedListeners;
	void addOnTagStyleChanged(void delegate(char[], SourceLanguage) dlg)
	{
		if ( !("tag-style-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"tag-style-changed",
			cast(GCallback)&callBackTagStyleChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["tag-style-changed"] = 1;
		}
		onTagStyleChangedListeners ~= dlg;
	}
	extern(C) static void callBackTagStyleChanged(GtkSourceLanguage* sourcelanguageStruct, gchar* arg1, SourceLanguage sourceLanguage)
	{
		bit consumed = false;
		
		foreach ( void delegate(char[], SourceLanguage) dlg ; sourceLanguage.onTagStyleChangedListeners )
		{
			dlg(Str.toString(arg1), sourceLanguage);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Returns the localized name of the language.
	 * language:
	 *  a GtkSourceLanguage.
	 * Returns:
	 *  the name of language.
	 */
	public char[] gtkSourceLanguageGetName()
	{
		// gchar* gtk_source_language_get_name (GtkSourceLanguage *language);
		return Str.toString(gtk_source_language_get_name(gtkSourceLanguage) );
	}
	
	/**
	 * Returns the localized section of the language.
	 * Each language belong to a section (ex. HTML belogs to the
	 * Markup section).
	 * language:
	 *  a GtkSourceLanguage.
	 * Returns:
	 *  the section of language.
	 */
	public char[] gtkSourceLanguageGetSection()
	{
		// gchar* gtk_source_language_get_section (GtkSourceLanguage *language);
		return Str.toString(gtk_source_language_get_section(gtkSourceLanguage) );
	}
	
	/**
	 * Returns a list of tags for the given language. You should unref the tags
	 * and free the list after usage.
	 * language:
	 *  a GtkSourceLanguage.
	 * Returns:
	 *  a list of GtkSourceTag objects.
	 */
	public GSList* gtkSourceLanguageGetTags()
	{
		// GSList* gtk_source_language_get_tags (GtkSourceLanguage *language);
		return gtk_source_language_get_tags(gtkSourceLanguage);
	}
	
	/**
	 * Gets the value of the ESC character in the given language.
	 * language:
	 *  a GtkSourceLanguage.
	 * Returns:
	 *  the value of the ESC character.
	 */
	public gunichar gtkSourceLanguageGetEscapeChar()
	{
		// gunichar gtk_source_language_get_escape_char  (GtkSourceLanguage *language);
		return gtk_source_language_get_escape_char(gtkSourceLanguage);
	}
	
	/**
	 * Returns a list of mime types for the given language. After usage you should
	 * free each element of the list as well as the list itself.
	 * language:
	 *  a GtkSourceLanguage.
	 * Returns:
	 *  a list of mime types (strings).
	 */
	public GSList* gtkSourceLanguageGetMimeTypes()
	{
		// GSList* gtk_source_language_get_mime_types  (GtkSourceLanguage *language);
		return gtk_source_language_get_mime_types(gtkSourceLanguage);
	}
	
	/**
	 * Sets a list of mime_types for the given language.
	 * If mime_types is NULL this function will use the default mime
	 * types from the language file.
	 * language:
	 *  a GtkSourceLanguage
	 * mime_types:
	 *  a list of mime types (strings).
	 */
	public void gtkSourceLanguageSetMimeTypes(GSList* mimeTypes)
	{
		// void gtk_source_language_set_mime_types  (GtkSourceLanguage *language,  const GSList *mime_types);
		gtk_source_language_set_mime_types(gtkSourceLanguage, mimeTypes);
	}
	
	/**
	 * Gets the style scheme associated with the given language.
	 * language:
	 *  a GtkSourceLanguage.
	 * Returns:
	 *  a GtkSourceStyleScheme.
	 */
	public SourceStyleScheme gtkSourceLanguageGetStyleScheme()
	{
		// GtkSourceStyleScheme* gtk_source_language_get_style_scheme  (GtkSourceLanguage *language);
		return new SourceStyleScheme( gtk_source_language_get_style_scheme(gtkSourceLanguage) );
	}
	
	/**
	 * Sets the style scheme of the given language.
	 * language:
	 *  a GtkSourceLanguage.
	 * scheme:
	 *  a GtkSourceStyleScheme.
	 */
	public void gtkSourceLanguageSetStyleScheme(SourceStyleScheme scheme)
	{
		// void gtk_source_language_set_style_scheme  (GtkSourceLanguage *language,  GtkSourceStyleScheme *scheme);
		gtk_source_language_set_style_scheme(gtkSourceLanguage, (scheme is null) ? null : scheme.getSourceStyleSchemeStruct());
	}
	
	/**
	 * Gets the style of the tag whose ID is tag_id. If the style is
	 * not defined then returns the default style.
	 * language:
	 *  a GtkSourceLanguage.
	 * tag_id:
	 *  the ID of a GtkSourceTag.
	 * Returns:
	 *  a GtkSourceTagStyle.
	 */
	public GtkSourceTagStyle* gtkSourceLanguageGetTagStyle(char[] tagId)
	{
		// GtkSourceTagStyle* gtk_source_language_get_tag_style  (GtkSourceLanguage *language,  const gchar *tag_id);
		return gtk_source_language_get_tag_style(gtkSourceLanguage, Str.toStringz(tagId));
	}
	
	/**
	 * Sets the style of the tag whose ID is tag_id. If style is NULL
	 * restore the default style.
	 * language:
	 *  a GtkSourceLanguage.
	 * tag_id:
	 *  the ID of a GtkSourceTag.
	 * style:
	 *  a GtkSourceTagStyle.
	 */
	public void gtkSourceLanguageSetTagStyle(char[] tagId, GtkSourceTagStyle* style)
	{
		// void gtk_source_language_set_tag_style  (GtkSourceLanguage *language,  const gchar *tag_id,  const GtkSourceTagStyle *style);
		gtk_source_language_set_tag_style(gtkSourceLanguage, Str.toStringz(tagId), style);
	}
	
	/**
	 * Gets the default style of the tag whose ID is tag_id.
	 * language:
	 *  a GtkSourceLanguage.
	 * tag_id:
	 *  the ID of a GtkSourceTag.
	 * Returns:
	 *  a GtkSourceTagStyle.
	 * Signal Details
	 * The "tag-style-changed" signal
	 * void user_function (GtkSourceLanguage *sourcelanguage,
	 *  gchar *arg1,
	 *  gpointer user_data) : Run last
	 * sourcelanguage:
	 * the object which received the signal.
	 * arg1:
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public GtkSourceTagStyle* gtkSourceLanguageGetTagDefaultStyle(char[] tagId)
	{
		// GtkSourceTagStyle* gtk_source_language_get_tag_default_style  (GtkSourceLanguage *language,  const gchar *tag_id);
		return gtk_source_language_get_tag_default_style(gtkSourceLanguage, Str.toStringz(tagId));
	}
}
