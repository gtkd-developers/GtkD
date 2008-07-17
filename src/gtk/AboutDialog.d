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


private import glib.Str;
private import gdk.Pixbuf;
private import gtk.Window;



private import gtk.Dialog;

/**
 * Description
 * The GtkAboutDialog offers a simple way to display information about
 * a program like its logo, name, copyright, website and license. It is
 * also possible to give credits to the authors, documenters, translators
 * and artists who have worked on the program. An about dialog is typically
 * opened when the user selects the About option from
 * the Help menu. All parts of the dialog are optional.
 * About dialog often contain links and email addresses. GtkAboutDialog
 * supports this by offering global hooks, which are called when the user
 * clicks on a link or email address, see gtk_about_dialog_set_email_hook()
 * and gtk_about_dialog_set_url_hook(). Email addresses in the
 * authors, documenters and artists properties are recognized by looking for
 * <user@host>, URLs are
 * recognized by looking for http://url, with
 * url extending to the next space, tab or line break.
 * To make constructing a GtkAboutDialog as convenient as possible, you can
 * use the function gtk_show_about_dialog() which constructs and shows a dialog
 * and keeps it around so that it can be shown again.
 * Note that GTK+ sets a default title of _("About %s")
 * on the dialog window (where %s is replaced by the name of the
 * application, but in order to ensure proper translation of the title,
 * applications should set the title property explicitly when constructing
 * a GtkAboutDialog, as shown in the following example:
 * gtk_show_about_dialog (NULL,
 *  "program-name", "ExampleCode",
 *  "logo", example_logo,
 *  "title" _("About ExampleCode"),
 *  NULL);
 * Note that prior to GTK+ 2.12, the "program-name" property
 * was called "name". This was changed to avoid the conflict with the
 * "name" property.
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
		if(gtkAboutDialog is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkAboutDialog);
		if( ptr !is null )
		{
			this = cast(AboutDialog)ptr;
			return;
		}
		super(cast(GtkDialog*)gtkAboutDialog);
		this.gtkAboutDialog = gtkAboutDialog;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkAboutDialog.
	 * Since 2.6
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget* gtk_about_dialog_new (void);
		auto p = gtk_about_dialog_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_about_dialog_new()");
		}
		this(cast(GtkAboutDialog*) p);
	}
	
	/**
	 * Warning
	 * gtk_about_dialog_get_name is deprecated and should not be used in newly-written code.
	 * Returns the program name displayed in the about dialog.
	 * Since 2.6
	 * @Deprecated: 2.12: Use gtk_about_dialog_get_program_name() instead.
	 * Returns: The program name. The string is owned by the about dialog and must not be modified.
	 */
	public override string getName()
	{
		// const gchar* gtk_about_dialog_get_name (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_name(gtkAboutDialog));
	}
	
	/**
	 * Warning
	 * gtk_about_dialog_set_name is deprecated and should not be used in newly-written code.
	 * Sets the name to display in the about dialog.
	 * If this is not set, it defaults to g_get_application_name().
	 * Since 2.6
	 * @Deprecated: 2.12: Use gtk_about_dialog_set_program_name() instead.
	 * Params:
	 * name =  the program name
	 */
	public override void setName(string name)
	{
		// void gtk_about_dialog_set_name (GtkAboutDialog *about,  const gchar *name);
		gtk_about_dialog_set_name(gtkAboutDialog, Str.toStringz(name));
	}
	
	/**
	 * Returns the program name displayed in the about dialog.
	 * Since 2.12
	 * Returns: The program name. The string is owned by the about dialog and must not be modified.
	 */
	public string getProgramName()
	{
		// const gchar* gtk_about_dialog_get_program_name (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_program_name(gtkAboutDialog));
	}
	
	/**
	 * Sets the name to display in the about dialog.
	 * If this is not set, it defaults to g_get_application_name().
	 * Since 2.12
	 * Params:
	 * name =  the program name
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
		// const gchar* gtk_about_dialog_get_version (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_version(gtkAboutDialog));
	}
	
	/**
	 * Sets the version string to display in the about dialog.
	 * Since 2.6
	 * Params:
	 * versio =  the version string
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
		// const gchar* gtk_about_dialog_get_copyright (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_copyright(gtkAboutDialog));
	}
	
	/**
	 * Sets the copyright string to display in the about dialog.
	 * This should be a short string of one or two lines.
	 * Since 2.6
	 * Params:
	 * copyright =  the copyright string
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
		// const gchar* gtk_about_dialog_get_comments (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_comments(gtkAboutDialog));
	}
	
	/**
	 * Sets the comments string to display in the about
	 * dialog. This should be a short string of one or
	 * two lines.
	 * Since 2.6
	 * Params:
	 * comments =  a comments string
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
		// const gchar* gtk_about_dialog_get_license (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_license(gtkAboutDialog));
	}
	
	/**
	 * Sets the license information to be displayed in the secondary
	 * license dialog. If license is NULL, the license button is
	 * hidden.
	 * Since 2.6
	 * Params:
	 * license =  the license information or NULL
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
	 * wrapLicense =  whether to wrap the license
	 */
	public void setWrapLicense(int wrapLicense)
	{
		// void gtk_about_dialog_set_wrap_license (GtkAboutDialog *about,  gboolean wrap_license);
		gtk_about_dialog_set_wrap_license(gtkAboutDialog, wrapLicense);
	}
	
	/**
	 * Returns the website URL.
	 * Since 2.6
	 * Returns: The website URL. The string is owned by the about dialog and must not be modified.
	 */
	public string getWebsite()
	{
		// const gchar* gtk_about_dialog_get_website (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_website(gtkAboutDialog));
	}
	
	/**
	 * Sets the URL to use for the website link.
	 * Since 2.6
	 * Params:
	 * website =  a URL string starting with "http://"
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
		// const gchar* gtk_about_dialog_get_website_label (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_website_label(gtkAboutDialog));
	}
	
	/**
	 * Sets the label to be used for the website link.
	 * It defaults to the website URL.
	 * Since 2.6
	 * Params:
	 * websiteLabel =  the label used for the website link
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
	 * Returns: A NULL-terminated string array containing the authors. The array is owned by the about dialog  and must not be modified.
	 */
	public char** getAuthors()
	{
		// const gchar* const * gtk_about_dialog_get_authors (GtkAboutDialog *about);
		return gtk_about_dialog_get_authors(gtkAboutDialog);
	}
	
	/**
	 * Sets the strings which are displayed in the authors tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Params:
	 * authors =  a NULL-terminated array of strings
	 */
	public void setAuthors(char** authors)
	{
		// void gtk_about_dialog_set_authors (GtkAboutDialog *about,  const gchar **authors);
		gtk_about_dialog_set_authors(gtkAboutDialog, authors);
	}
	
	/**
	 * Returns the string which are displayed in the artists tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Returns: A NULL-terminated string array containing the artists. The array is owned by the about dialog  and must not be modified.
	 */
	public char** getArtists()
	{
		// const gchar* const * gtk_about_dialog_get_artists (GtkAboutDialog *about);
		return gtk_about_dialog_get_artists(gtkAboutDialog);
	}
	
	/**
	 * Sets the strings which are displayed in the artists tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Params:
	 * artists =  a NULL-terminated array of strings
	 */
	public void setArtists(char** artists)
	{
		// void gtk_about_dialog_set_artists (GtkAboutDialog *about,  const gchar **artists);
		gtk_about_dialog_set_artists(gtkAboutDialog, artists);
	}
	
	/**
	 * Returns the string which are displayed in the documenters
	 * tab of the secondary credits dialog.
	 * Since 2.6
	 * Returns: A NULL-terminated string array containing the documenters. The array is owned by the about dialog  and must not be modified.
	 */
	public char** getDocumenters()
	{
		// const gchar* const * gtk_about_dialog_get_documenters (GtkAboutDialog *about);
		return gtk_about_dialog_get_documenters(gtkAboutDialog);
	}
	
	/**
	 * Sets the strings which are displayed in the documenters tab
	 * of the secondary credits dialog.
	 * Since 2.6
	 * Params:
	 * documenters =  a NULL-terminated array of strings
	 */
	public void setDocumenters(char** documenters)
	{
		// void gtk_about_dialog_set_documenters (GtkAboutDialog *about,  const gchar **documenters);
		gtk_about_dialog_set_documenters(gtkAboutDialog, documenters);
	}
	
	/**
	 * Returns the translator credits string which is displayed
	 * in the translators tab of the secondary credits dialog.
	 * Since 2.6
	 * Returns: The translator credits string. The string is owned by the about dialog and must not be modified.
	 */
	public string getTranslatorCredits()
	{
		// const gchar* gtk_about_dialog_get_translator_credits  (GtkAboutDialog *about);
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
	 * translatorCredits =  the translator credits
	 */
	public void setTranslatorCredits(string translatorCredits)
	{
		// void gtk_about_dialog_set_translator_credits  (GtkAboutDialog *about,  const gchar *translator_credits);
		gtk_about_dialog_set_translator_credits(gtkAboutDialog, Str.toStringz(translatorCredits));
	}
	
	/**
	 * Returns the pixbuf displayed as logo in the about dialog.
	 * Since 2.6
	 * Returns: the pixbuf displayed as logo. The pixbuf is owned by the about dialog. If you want to keep a reference to it, you have to call g_object_ref() on it.
	 */
	public Pixbuf getLogo()
	{
		// GdkPixbuf* gtk_about_dialog_get_logo (GtkAboutDialog *about);
		auto p = gtk_about_dialog_get_logo(gtkAboutDialog);
		if(p is null)
		{
			return null;
		}
		return new Pixbuf(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Sets the pixbuf to be displayed as logo in
	 * the about dialog. If it is NULL, the default
	 * window icon set with gtk_window_set_default_icon()
	 * will be used.
	 * Since 2.6
	 * Params:
	 * logo =  a GdkPixbuf, or NULL
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
		// const gchar* gtk_about_dialog_get_logo_icon_name (GtkAboutDialog *about);
		return Str.toString(gtk_about_dialog_get_logo_icon_name(gtkAboutDialog));
	}
	
	/**
	 * Sets the pixbuf to be displayed as logo in
	 * the about dialog. If it is NULL, the default
	 * window icon set with gtk_window_set_default_icon()
	 * will be used.
	 * Since 2.6
	 * Params:
	 * iconName =  an icon name, or NULL
	 */
	public void setLogoIconName(string iconName)
	{
		// void gtk_about_dialog_set_logo_icon_name (GtkAboutDialog *about,  const gchar *icon_name);
		gtk_about_dialog_set_logo_icon_name(gtkAboutDialog, Str.toStringz(iconName));
	}
	
	/**
	 * Installs a global function to be called whenever the user activates an
	 * email link in an about dialog.
	 * Since 2.6
	 * Params:
	 * func =  a function to call when an email link is activated.
	 * data =  data to pass to func
	 * destroy =  GDestroyNotify for data
	 * Returns: the previous email hook.
	 */
	public static GtkAboutDialogActivateLinkFunc setEmailHook(GtkAboutDialogActivateLinkFunc func, void* data, GDestroyNotify destroy)
	{
		// GtkAboutDialogActivateLinkFunc gtk_about_dialog_set_email_hook  (GtkAboutDialogActivateLinkFunc func,  gpointer data,  GDestroyNotify destroy);
		return gtk_about_dialog_set_email_hook(func, data, destroy);
	}
	
	/**
	 * Installs a global function to be called whenever the user activates a
	 * URL link in an about dialog.
	 * Since 2.6
	 * Params:
	 * func =  a function to call when a URL link is activated.
	 * data =  data to pass to func
	 * destroy =  GDestroyNotify for data
	 * Returns: the previous URL hook.
	 */
	public static GtkAboutDialogActivateLinkFunc setUrlHook(GtkAboutDialogActivateLinkFunc func, void* data, GDestroyNotify destroy)
	{
		// GtkAboutDialogActivateLinkFunc gtk_about_dialog_set_url_hook  (GtkAboutDialogActivateLinkFunc func,  gpointer data,  GDestroyNotify destroy);
		return gtk_about_dialog_set_url_hook(func, data, destroy);
	}
	
	/**
	 * This is a convenience function for showing an application's about box.
	 * The constructed dialog is associated with the parent window and
	 * reused for future invocations of this function.
	 * Since 2.6
	 * Params:
	 * parent =  transient parent, or NULL for none
	 * firstPropertyName =  the name of the first property
	 * ... =  value of first property, followed by more properties, NULL-terminated
	 */
	public static void showAboutDialog(Window parent, string firstPropertyName, ... )
	{
		// void gtk_show_about_dialog (GtkWindow *parent,  const gchar *first_property_name,  ...);
		gtk_show_about_dialog((parent is null) ? null : parent.getWindowStruct(), Str.toStringz(firstPropertyName));
	}
}
