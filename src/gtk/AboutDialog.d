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
 * inFile  = GtkAboutDialog.html
 * outPack = gtk
 * outFile = AboutDialog
 * strct   = GtkAboutDialog
 * realStrct=
 * ctorStrct=
 * clss    = AboutDialog
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_about_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gtk.Window
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 * 	- getName
 * 	- setName
 */

module gtk.AboutDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Pixbuf;
private import gtk.Window;



private import gtk.Dialog;

/**
 * The GtkAboutDialog offers a simple way to display information about
 * a program like its logo, name, copyright, website and license. It is
 * also possible to give credits to the authors, documenters, translators
 * and artists who have worked on the program. An about dialog is typically
 * opened when the user selects the About option from
 * the Help menu. All parts of the dialog are optional.
 *
 * About dialog often contain links and email addresses. GtkAboutDialog
 * displays these as clickable links. By default, it calls gtk_show_uri()
 * when a user clicks one. The behaviour can be overridden with the
 * "activate-link" signal.
 *
 * To make constructing a GtkAboutDialog as convenient as possible, you can
 * use the function gtk_show_about_dialog() which constructs and shows a dialog
 * and keeps it around so that it can be shown again.
 *
 * Note that GTK+ sets a default title of _("About %s")
 * on the dialog window (where %s is replaced by the name of the
 * application, but in order to ensure proper translation of the title,
 * applications should set the title property explicitly when constructing
 * a GtkAboutDialog, as shown in the following example:
 *
 * $(DDOC_COMMENT example)
 *
 * It is also possible to show a GtkAboutDialog like any other GtkDialog,
 * e.g. using gtk_dialog_run(). In this case, you might need to know that
 * the 'Close' button returns the GTK_RESPONSE_CANCEL response id.
 */
public class AboutDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkAboutDialog* gtkAboutDialog;
	
	
	public GtkAboutDialog* getAboutDialogStruct()
	{
		return gtkAboutDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAboutDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAboutDialog* gtkAboutDialog)
	{
		super(cast(GtkDialog*)gtkAboutDialog);
		this.gtkAboutDialog = gtkAboutDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkAboutDialog = cast(GtkAboutDialog*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(string, AboutDialog)[] onActivateLinkListeners;
	/**
	 * The signal which gets emitted to activate a URI.
	 * Applications may connect to it to override the default behaviour,
	 * which is to call gtk_show_uri().
	 * TRUE if the link has been activated
	 * Since 2.24
	 * See Also
	 * GTK_STOCK_ABOUT
	 */
	void addOnActivateLink(bool delegate(string, AboutDialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate-link" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-link",
			cast(GCallback)&callBackActivateLink,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate-link"] = 1;
		}
		onActivateLinkListeners ~= dlg;
	}
	extern(C) static gboolean callBackActivateLink(GtkAboutDialog* labelStruct, gchar* uri, AboutDialog _aboutDialog)
	{
		foreach ( bool delegate(string, AboutDialog) dlg ; _aboutDialog.onActivateLinkListeners )
		{
			if ( dlg(Str.toString(uri), _aboutDialog) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GtkAboutDialog.
	 * Since 2.6
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_about_dialog_new (void);
		auto p = gtk_about_dialog_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_about_dialog_new()");
		}
		this(cast(GtkAboutDialog*) p);
	}
	
	/**
	 * Returns the program name displayed in the about dialog.
	 * Since 2.12
	 * Returns: The program name. The string is owned by the about dialog and must not be modified.
	 */
	public string getProgramName()
	{
		// const gchar * gtk_about_dialog_get_program_name (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_program_name(gtkAboutDialog));
	}
	
	/**
	 * Sets the name to display in the about dialog.
	 * If this is not set, it defaults to g_get_application_name().
	 * Since 2.12
	 * Params:
	 * name = the program name
	 */
	public void setProgramName(string name)
	{
		// void gtk_about_dialog_set_program_name (GtkAboutDialog *about,  const gchar *name);
		gtk_about_dialog_set_program_name(gtkAboutDialog, Str.toStringz(name));
	}
	
	/**
	 * Returns the version string.
	 * Since 2.6
	 * Returns: The version string. The string is owned by the about dialog and must not be modified.
	 */
	public string getVersion()
	{
		// const gchar * gtk_about_dialog_get_version (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_version(gtkAboutDialog));
	}
	
	/**
	 * Sets the version string to display in the about dialog.
	 * Since 2.6
	 */
	public void setVersion(string versio)
	{
		// void gtk_about_dialog_set_version (GtkAboutDialog *about,  const gchar *version);
		gtk_about_dialog_set_version(gtkAboutDialog, Str.toStringz(versio));
	}
	
	/**
	 * Returns the copyright string.
	 * Since 2.6
	 * Returns: The copyright string. The string is owned by the about dialog and must not be modified.
	 */
	public string getCopyright()
	{
		// const gchar * gtk_about_dialog_get_copyright (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_copyright(gtkAboutDialog));
	}
	
	/**
	 * Sets the copyright string to display in the about dialog.
	 * This should be a short string of one or two lines.
	 * Since 2.6
	 * Params:
	 * copyright = (allow-none) the copyright string
	 */
	public void setCopyright(string copyright)
	{
		// void gtk_about_dialog_set_copyright (GtkAboutDialog *about,  const gchar *copyright);
		gtk_about_dialog_set_copyright(gtkAboutDialog, Str.toStringz(copyright));
	}
	
	/**
	 * Returns the comments string.
	 * Since 2.6
	 * Returns: The comments. The string is owned by the about dialog and must not be modified.
	 */
	public string getComments()
	{
		// const gchar * gtk_about_dialog_get_comments (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_comments(gtkAboutDialog));
	}
	
	/**
	 * Sets the comments string to display in the about dialog.
	 * This should be a short string of one or two lines.
	 * Since 2.6
	 * Params:
	 * comments = a comments string. [allow-none]
	 */
	public void setComments(string comments)
	{
		// void gtk_about_dialog_set_comments (GtkAboutDialog *about,  const gchar *comments);
		gtk_about_dialog_set_comments(gtkAboutDialog, Str.toStringz(comments));
	}
	
	/**
	 * Returns the license information.
	 * Since 2.6
	 * Returns: The license information. The string is owned by the about dialog and must not be modified.
	 */
	public string getLicense()
	{
		// const gchar * gtk_about_dialog_get_license (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_license(gtkAboutDialog));
	}
	
	/**
	 * Sets the license information to be displayed in the secondary
	 * license dialog. If license is NULL, the license button is
	 * hidden.
	 * Since 2.6
	 * Params:
	 * license = the license information or NULL. [allow-none]
	 */
	public void setLicense(string license)
	{
		// void gtk_about_dialog_set_license (GtkAboutDialog *about,  const gchar *license);
		gtk_about_dialog_set_license(gtkAboutDialog, Str.toStringz(license));
	}
	
	/**
	 * Returns whether the license text in about is
	 * automatically wrapped.
	 * Since 2.8
	 * Returns: TRUE if the license text is wrapped
	 */
	public int getWrapLicense()
	{
		// gboolean gtk_about_dialog_get_wrap_license (GtkAboutDialog *about);
		return gtk_about_dialog_get_wrap_license(gtkAboutDialog);
	}
	
	/**
	 * Sets whether the license text in about is
	 * automatically wrapped.
	 * Since 2.8
	 * Params:
	 * wrapLicense = whether to wrap the license
	 */
	public void setWrapLicense(int wrapLicense)
	{
		// void gtk_about_dialog_set_wrap_license (GtkAboutDialog *about,  gboolean wrap_license);
		gtk_about_dialog_set_wrap_license(gtkAboutDialog, wrapLicense);
	}
	
	/**
	 * Retrieves the license set using gtk_about_dialog_set_license_type()
	 * Returns: a GtkLicense value Since 3.0
	 */
	public GtkLicense getLicenseType()
	{
		// GtkLicense gtk_about_dialog_get_license_type (GtkAboutDialog *about);
		return gtk_about_dialog_get_license_type(gtkAboutDialog);
	}
	
	/**
	 * Sets the license of the application showing the about dialog from a
	 * list of known licenses.
	 * This function overrides the license set using
	 * gtk_about_dialog_set_license().
	 * Params:
	 * licenseType = the type of license
	 * Since 3.0
	 */
	public void setLicenseType(GtkLicense licenseType)
	{
		// void gtk_about_dialog_set_license_type (GtkAboutDialog *about,  GtkLicense license_type);
		gtk_about_dialog_set_license_type(gtkAboutDialog, licenseType);
	}
	
	/**
	 * Returns the website URL.
	 * Since 2.6
	 * Returns: The website URL. The string is owned by the about dialog and must not be modified.
	 */
	public string getWebsite()
	{
		// const gchar * gtk_about_dialog_get_website (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_website(gtkAboutDialog));
	}
	
	/**
	 * Sets the URL to use for the website link.
	 * Since 2.6
	 * Params:
	 * website = a URL string starting with "http://". [allow-none]
	 */
	public void setWebsite(string website)
	{
		// void gtk_about_dialog_set_website (GtkAboutDialog *about,  const gchar *website);
		gtk_about_dialog_set_website(gtkAboutDialog, Str.toStringz(website));
	}
	
	/**
	 * Returns the label used for the website link.
	 * Since 2.6
	 * Returns: The label used for the website link. The string is owned by the about dialog and must not be modified.
	 */
	public string getWebsiteLabel()
	{
		// const gchar * gtk_about_dialog_get_website_label (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_website_label(gtkAboutDialog));
	}
	
	/**
	 * Sets the label to be used for the website link.
	 * Since 2.6
	 * Params:
	 * websiteLabel = the label used for the website link
	 */
	public void setWebsiteLabel(string websiteLabel)
	{
		// void gtk_about_dialog_set_website_label (GtkAboutDialog *about,  const gchar *website_label);
		gtk_about_dialog_set_website_label(gtkAboutDialog, Str.toStringz(websiteLabel));
	}
	
	/**
	 * Returns the string which are displayed in the authors tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Returns: A NULL-terminated string array containing the authors. The array is owned by the about dialog and must not be modified. [array zero-terminated=1][transfer none]
	 */
	public string[] getAuthors()
	{
		// const gchar * const * gtk_about_dialog_get_authors (GtkAboutDialog *about);
		return Str.toStringArray(gtk_about_dialog_get_authors(gtkAboutDialog));
	}
	
	/**
	 * Sets the strings which are displayed in the authors tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Params:
	 * authors = a NULL-terminated array of strings. [array zero-terminated=1]
	 */
	public void setAuthors(string[] authors)
	{
		// void gtk_about_dialog_set_authors (GtkAboutDialog *about,  const gchar **authors);
		gtk_about_dialog_set_authors(gtkAboutDialog, Str.toStringzArray(authors));
	}
	
	/**
	 * Returns the string which are displayed in the artists tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Returns: A NULL-terminated string array containing the artists. The array is owned by the about dialog and must not be modified. [array zero-terminated=1][transfer none]
	 */
	public string[] getArtists()
	{
		// const gchar * const * gtk_about_dialog_get_artists (GtkAboutDialog *about);
		return Str.toStringArray(gtk_about_dialog_get_artists(gtkAboutDialog));
	}
	
	/**
	 * Sets the strings which are displayed in the artists tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Params:
	 * artists = a NULL-terminated array of strings. [array zero-terminated=1]
	 */
	public void setArtists(string[] artists)
	{
		// void gtk_about_dialog_set_artists (GtkAboutDialog *about,  const gchar **artists);
		gtk_about_dialog_set_artists(gtkAboutDialog, Str.toStringzArray(artists));
	}
	
	/**
	 * Returns the string which are displayed in the documenters
	 * tab of the secondary credits dialog.
	 * Since 2.6
	 * Returns: A NULL-terminated string array containing the documenters. The array is owned by the about dialog and must not be modified. [array zero-terminated=1][transfer none]
	 */
	public string[] getDocumenters()
	{
		// const gchar * const * gtk_about_dialog_get_documenters (GtkAboutDialog *about);
		return Str.toStringArray(gtk_about_dialog_get_documenters(gtkAboutDialog));
	}
	
	/**
	 * Sets the strings which are displayed in the documenters tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Params:
	 * documenters = a NULL-terminated array of strings. [array zero-terminated=1]
	 */
	public void setDocumenters(string[] documenters)
	{
		// void gtk_about_dialog_set_documenters (GtkAboutDialog *about,  const gchar **documenters);
		gtk_about_dialog_set_documenters(gtkAboutDialog, Str.toStringzArray(documenters));
	}
	
	/**
	 * Returns the translator credits string which is displayed
	 * in the translators tab of the secondary credits dialog.
	 * Since 2.6
	 * Returns: The translator credits string. The string is owned by the about dialog and must not be modified.
	 */
	public string getTranslatorCredits()
	{
		// const gchar * gtk_about_dialog_get_translator_credits  (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_translator_credits(gtkAboutDialog));
	}
	
	/**
	 * Sets the translator credits string which is displayed in
	 * the translators tab of the secondary credits dialog.
	 * The intended use for this string is to display the translator
	 * of the language which is currently used in the user interface.
	 * Using gettext(), a simple way to achieve that is to mark the
	 * Since 2.6
	 * Params:
	 * translatorCredits = the translator credits. [allow-none]
	 */
	public void setTranslatorCredits(string translatorCredits)
	{
		// void gtk_about_dialog_set_translator_credits  (GtkAboutDialog *about,  const gchar *translator_credits);
		gtk_about_dialog_set_translator_credits(gtkAboutDialog, Str.toStringz(translatorCredits));
	}
	
	/**
	 * Returns the pixbuf displayed as logo in the about dialog.
	 * Since 2.6
	 * Returns: the pixbuf displayed as logo. The pixbuf is owned by the about dialog. If you want to keep a reference to it, you have to call g_object_ref() on it. [transfer none]
	 */
	public Pixbuf getLogo()
	{
		// GdkPixbuf * gtk_about_dialog_get_logo (GtkAboutDialog *about);
		auto p = gtk_about_dialog_get_logo(gtkAboutDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Sets the pixbuf to be displayed as logo in the about dialog.
	 * If it is NULL, the default window icon set with
	 * gtk_window_set_default_icon() will be used.
	 * Since 2.6
	 * Params:
	 * logo = a GdkPixbuf, or NULL. [allow-none]
	 */
	public void setLogo(Pixbuf logo)
	{
		// void gtk_about_dialog_set_logo (GtkAboutDialog *about,  GdkPixbuf *logo);
		gtk_about_dialog_set_logo(gtkAboutDialog, (logo is null) ? null : logo.getPixbufStruct());
	}
	
	/**
	 * Returns the icon name displayed as logo in the about dialog.
	 * Since 2.6
	 * Returns: the icon name displayed as logo. The string is owned by the dialog. If you want to keep a reference to it, you have to call g_strdup() on it.
	 */
	public string getLogoIconName()
	{
		// const gchar * gtk_about_dialog_get_logo_icon_name (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_logo_icon_name(gtkAboutDialog));
	}
	
	/**
	 * Sets the pixbuf to be displayed as logo in the about dialog.
	 * If it is NULL, the default window icon set with
	 * gtk_window_set_default_icon() will be used.
	 * Since 2.6
	 * Params:
	 * iconName = an icon name, or NULL. [allow-none]
	 */
	public void setLogoIconName(string iconName)
	{
		// void gtk_about_dialog_set_logo_icon_name (GtkAboutDialog *about,  const gchar *icon_name);
		gtk_about_dialog_set_logo_icon_name(gtkAboutDialog, Str.toStringz(iconName));
	}
	
	/**
	 * Creates a new section in the Credits page.
	 * Params:
	 * sectionName = The name of the section
	 * people = The people who belong to that section. [array zero-terminated=1]
	 * Since 3.4
	 */
	public void addCreditSection(string sectionName, string[] people)
	{
		// void gtk_about_dialog_add_credit_section (GtkAboutDialog *about,  const gchar *section_name,  const gchar **people);
		gtk_about_dialog_add_credit_section(gtkAboutDialog, Str.toStringz(sectionName), Str.toStringzArray(people));
	}
}
