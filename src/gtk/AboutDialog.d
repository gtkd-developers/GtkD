/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = AboutDialog
 * strct   = GtkAboutDialog
 * realStrct=
 * clss    = AboutDialog
 * extend  = 
 * prefixes:
 * 	- gtk_about_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- std.string
 * 	- gdk.Pixbuf
 * 	- gtk.Window
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkWindow* -> Window
 * local aliases:
 */

module gtk.AboutDialog;

private import gtk.typedefs;

private import lib.gtk;

private import std.string;
private import gdk.Pixbuf;
private import gtk.Window;

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
 */
private import gtk.Dialog;
public class AboutDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkAboutDialog* gtkAboutDialog;
	
	
	public GtkAboutDialog* getAboutDialogStruct()
	{
		return gtkAboutDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkAboutDialog.
	 * Returns:
	 *  a newly created GtkAboutDialog
	 * Since 2.6
	 */
	public this ()
	{
		// GtkWidget* gtk_about_dialog_new (void);
		this(cast(GtkAboutDialog*)gtk_about_dialog_new() );
	}
	
	/**
	 * Returns the program name displayed in the about dialog.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  The program name. The string is owned by the about
	 *  dialog and must not be modified.
	 * Since 2.6
	 */
	public char[] getName()
	{
		// const gchar* gtk_about_dialog_get_name (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_name(gtkAboutDialog) );
	}
	
	/**
	 * Sets the name to display in the about dialog.
	 * If this is not set, it defaults to g_get_application_name().
	 * about:
	 *  a GtkAboutDialog
	 * name:
	 *  the program name
	 * Since 2.6
	 */
	public void setName(char[] name)
	{
		// void gtk_about_dialog_set_name (GtkAboutDialog *about,  const gchar *name);
		gtk_about_dialog_set_name(gtkAboutDialog, std.string.toStringz(name));
	}
	
	/**
	 * Returns the version string.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  The version string. The string is owned by the about
	 *  dialog and must not be modified.
	 * Since 2.6
	 */
	public char[] getVersion()
	{
		// const gchar* gtk_about_dialog_get_version (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_version(gtkAboutDialog) );
	}
	
	/**
	 * Sets the version string to display in the about dialog.
	 * about:
	 *  a GtkAboutDialog
	 * version:
	 *  the version string
	 * Since 2.6
	 */
	public void setVersion(char[] versio)
	{
		// void gtk_about_dialog_set_version (GtkAboutDialog *about,  const gchar *version);
		gtk_about_dialog_set_version(gtkAboutDialog, std.string.toStringz(versio));
	}
	
	/**
	 * Returns the copyright string.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  The copyright string. The string is owned by the about
	 *  dialog and must not be modified.
	 * Since 2.6
	 */
	public char[] getCopyright()
	{
		// const gchar* gtk_about_dialog_get_copyright (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_copyright(gtkAboutDialog) );
	}
	
	/**
	 * Sets the copyright string to display in the about dialog.
	 * This should be a short string of one or two lines.
	 * about:
	 *  a GtkAboutDialog
	 * copyright:
	 *  the copyright string
	 * Since 2.6
	 */
	public void setCopyright(char[] copyright)
	{
		// void gtk_about_dialog_set_copyright (GtkAboutDialog *about,  const gchar *copyright);
		gtk_about_dialog_set_copyright(gtkAboutDialog, std.string.toStringz(copyright));
	}
	
	/**
	 * Returns the comments string.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  The comments. The string is owned by the about
	 *  dialog and must not be modified.
	 * Since 2.6
	 */
	public char[] getComments()
	{
		// const gchar* gtk_about_dialog_get_comments (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_comments(gtkAboutDialog) );
	}
	
	/**
	 * Sets the comments string to display in the about
	 * dialog. This should be a short string of one or
	 * two lines.
	 * about:
	 *  a GtkAboutDialog
	 * comments:
	 *  a comments string
	 * Since 2.6
	 */
	public void setComments(char[] comments)
	{
		// void gtk_about_dialog_set_comments (GtkAboutDialog *about,  const gchar *comments);
		gtk_about_dialog_set_comments(gtkAboutDialog, std.string.toStringz(comments));
	}
	
	/**
	 * Returns the license information.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  The license information. The string is owned by the about
	 *  dialog and must not be modified.
	 * Since 2.6
	 */
	public char[] getLicense()
	{
		// const gchar* gtk_about_dialog_get_license (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_license(gtkAboutDialog) );
	}
	
	/**
	 * Sets the license information to be displayed in the secondary
	 * license dialog. If license is NULL, the license button is
	 * hidden.
	 * about:
	 *  a GtkAboutDialog
	 * license:
	 *  the license information or NULL
	 * Since 2.6
	 */
	public void setLicense(char[] license)
	{
		// void gtk_about_dialog_set_license (GtkAboutDialog *about,  const gchar *license);
		gtk_about_dialog_set_license(gtkAboutDialog, std.string.toStringz(license));
	}
	
	/**
	 * Returns whether the license text in about is
	 * automatically wrapped.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  TRUE if the license text is wrapped
	 * Since 2.8
	 */
	public int getWrapLicense()
	{
		// gboolean gtk_about_dialog_get_wrap_license  (GtkAboutDialog *about);
		return gtk_about_dialog_get_wrap_license(gtkAboutDialog);
	}
	
	/**
	 * Sets whether the license text in about is
	 * automatically wrapped.
	 * about:
	 *  a GtkAboutDialog
	 * wrap_license:
	 *  whether to wrap the license
	 * Since 2.8
	 */
	public void setWrapLicense(int wrapLicense)
	{
		// void gtk_about_dialog_set_wrap_license  (GtkAboutDialog *about,  gboolean wrap_license);
		gtk_about_dialog_set_wrap_license(gtkAboutDialog, wrapLicense);
	}
	
	/**
	 * Returns the website URL.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  The website URL. The string is owned by the about
	 *  dialog and must not be modified.
	 * Since 2.6
	 */
	public char[] getWebsite()
	{
		// const gchar* gtk_about_dialog_get_website (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_website(gtkAboutDialog) );
	}
	
	/**
	 * Sets the URL to use for the website link.
	 * about:
	 *  a GtkAboutDialog
	 * website:
	 *  a URL string starting with "http://"
	 * Since 2.6
	 */
	public void setWebsite(char[] website)
	{
		// void gtk_about_dialog_set_website (GtkAboutDialog *about,  const gchar *website);
		gtk_about_dialog_set_website(gtkAboutDialog, std.string.toStringz(website));
	}
	
	/**
	 * Returns the label used for the website link.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  The label used for the website link. The string is owned by the about
	 *  dialog and must not be modified.
	 * Since 2.6
	 */
	public char[] getWebsiteLabel()
	{
		// const gchar* gtk_about_dialog_get_website_label  (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_website_label(gtkAboutDialog) );
	}
	
	/**
	 * Sets the label to be used for the website link.
	 * It defaults to the website URL.
	 * about:
	 *  a GtkAboutDialog
	 * website_label:
	 *  the label used for the website link
	 * Since 2.6
	 */
	public void setWebsiteLabel(char[] websiteLabel)
	{
		// void gtk_about_dialog_set_website_label  (GtkAboutDialog *about,  const gchar *website_label);
		gtk_about_dialog_set_website_label(gtkAboutDialog, std.string.toStringz(websiteLabel));
	}
	
	/**
	 * Returns the string which are displayed in the authors tab
	 * of the secondary credits dialog.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  A NULL-terminated string array containing
	 *  the authors. The array is owned by the about dialog
	 *  and must not be modified.
	 * Since 2.6
	 */
	public char** getAuthors()
	{
		// const gchar* const * gtk_about_dialog_get_authors  (GtkAboutDialog *about);
		return gtk_about_dialog_get_authors(gtkAboutDialog);
	}
	
	/**
	 * Sets the strings which are displayed in the authors tab
	 * of the secondary credits dialog.
	 * about:
	 *  a GtkAboutDialog
	 * authors:
	 *  a NULL-terminated array of strings
	 * Since 2.6
	 */
	public void setAuthors(char** authors)
	{
		// void gtk_about_dialog_set_authors (GtkAboutDialog *about,  const gchar **authors);
		gtk_about_dialog_set_authors(gtkAboutDialog, authors);
	}
	
	/**
	 * Returns the string which are displayed in the artists tab
	 * of the secondary credits dialog.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  A NULL-terminated string array containing
	 *  the artists. The array is owned by the about dialog
	 *  and must not be modified.
	 * Since 2.6
	 */
	public char** getArtists()
	{
		// const gchar* const * gtk_about_dialog_get_artists  (GtkAboutDialog *about);
		return gtk_about_dialog_get_artists(gtkAboutDialog);
	}
	
	/**
	 * Sets the strings which are displayed in the artists tab
	 * of the secondary credits dialog.
	 * about:
	 *  a GtkAboutDialog
	 * artists:
	 *  a NULL-terminated array of strings
	 * Since 2.6
	 */
	public void setArtists(char** artists)
	{
		// void gtk_about_dialog_set_artists (GtkAboutDialog *about,  const gchar **artists);
		gtk_about_dialog_set_artists(gtkAboutDialog, artists);
	}
	
	/**
	 * Returns the string which are displayed in the documenters
	 * tab of the secondary credits dialog.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  A NULL-terminated string array containing
	 *  the documenters. The array is owned by the about dialog
	 *  and must not be modified.
	 * Since 2.6
	 */
	public char** getDocumenters()
	{
		// const gchar* const * gtk_about_dialog_get_documenters  (GtkAboutDialog *about);
		return gtk_about_dialog_get_documenters(gtkAboutDialog);
	}
	
	/**
	 * Sets the strings which are displayed in the documenters tab
	 * of the secondary credits dialog.
	 * about:
	 *  a GtkAboutDialog
	 * documenters:
	 *  a NULL-terminated array of strings
	 * Since 2.6
	 */
	public void setDocumenters(char** documenters)
	{
		// void gtk_about_dialog_set_documenters  (GtkAboutDialog *about,  const gchar **documenters);
		gtk_about_dialog_set_documenters(gtkAboutDialog, documenters);
	}
	
	/**
	 * Returns the translator credits string which is displayed
	 * in the translators tab of the secondary credits dialog.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  The translator credits string. The string is
	 *  owned by the about dialog and must not be modified.
	 * Since 2.6
	 */
	public char[] getTranslatorCredits()
	{
		// const gchar* gtk_about_dialog_get_translator_credits  (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_translator_credits(gtkAboutDialog) );
	}
	
	/**
	 * Sets the translator credits string which is displayed in
	 * the translators tab of the secondary credits dialog.
	 * The intended use for this string is to display the translator
	 * of the language which is currently used in the user interface.
	 * Using gettext(), a simple way to achieve that is to mark the
	 * string for translation:
	 *  gtk_about_dialog_set_translator_credits (about, _("translator-credits"));
	 * It is a good idea to use the customary msgid "translator-credits" for this
	 * purpose, since translators will already know the purpose of that msgid, and
	 * since GtkAboutDialog will detect if "translator-credits" is untranslated
	 * and hide the tab.
	 * about:
	 *  a GtkAboutDialog
	 * translator_credits:
	 *  the translator credits
	 * Since 2.6
	 */
	public void setTranslatorCredits(char[] translatorCredits)
	{
		// void gtk_about_dialog_set_translator_credits  (GtkAboutDialog *about,  const gchar *translator_credits);
		gtk_about_dialog_set_translator_credits(gtkAboutDialog, std.string.toStringz(translatorCredits));
	}
	
	/**
	 * Returns the pixbuf displayed as logo in the about dialog.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  the pixbuf displayed as logo. The pixbuf is
	 *  owned by the about dialog. If you want to keep a reference
	 *  to it, you have to call g_object_ref() on it.
	 * Since 2.6
	 */
	public Pixbuf getLogo()
	{
		// GdkPixbuf* gtk_about_dialog_get_logo (GtkAboutDialog *about);
		return new Pixbuf( gtk_about_dialog_get_logo(gtkAboutDialog) );
	}
	
	/**
	 * Sets the pixbuf to be displayed as logo in
	 * the about dialog. If it is NULL, the default
	 * window icon set with gtk_window_set_default_icon()
	 * will be used.
	 * about:
	 *  a GtkAboutDialog
	 * logo:
	 *  a GdkPixbuf, or NULL
	 * Since 2.6
	 */
	public void setLogo(Pixbuf logo)
	{
		// void gtk_about_dialog_set_logo (GtkAboutDialog *about,  GdkPixbuf *logo);
		gtk_about_dialog_set_logo(gtkAboutDialog, (logo is null) ? null : logo.getPixbufStruct());
	}
	
	/**
	 * Returns the icon name displayed as logo in the about dialog.
	 * about:
	 *  a GtkAboutDialog
	 * Returns:
	 *  the icon name displayed as logo. The string is
	 *  owned by the dialog. If you want to keep a reference
	 *  to it, you have to call g_strdup() on it.
	 * Since 2.6
	 */
	public char[] getLogoIconName()
	{
		// const gchar* gtk_about_dialog_get_logo_icon_name  (GtkAboutDialog *about);
		return std.string.toString(gtk_about_dialog_get_logo_icon_name(gtkAboutDialog) );
	}
	
	/**
	 * Sets the pixbuf to be displayed as logo in
	 * the about dialog. If it is NULL, the default
	 * window icon set with gtk_window_set_default_icon()
	 * will be used.
	 * about:
	 *  a GtkAboutDialog
	 * icon_name:
	 *  an icon name, or NULL
	 * Since 2.6
	 */
	public void setLogoIconName(char[] iconName)
	{
		// void gtk_about_dialog_set_logo_icon_name  (GtkAboutDialog *about,  const gchar *icon_name);
		gtk_about_dialog_set_logo_icon_name(gtkAboutDialog, std.string.toStringz(iconName));
	}
	
	
	/**
	 * Installs a global function to be called whenever the user activates an
	 * email link in an about dialog.
	 * func:
	 *  a function to call when an email link is activated.
	 * data:
	 *  data to pass to func
	 * destroy:
	 *  GDestroyNotify for data
	 * Returns:
	 *  the previous email hook.
	 * Since 2.6
	 */
	public static GtkAboutDialogActivateLinkFunc setEmailHook(GtkAboutDialogActivateLinkFunc func, void* data, GDestroyNotify destroy)
	{
		// GtkAboutDialogActivateLinkFunc gtk_about_dialog_set_email_hook  (GtkAboutDialogActivateLinkFunc func,  gpointer data,  GDestroyNotify destroy);
		return gtk_about_dialog_set_email_hook(func, data, destroy);
	}
	
	/**
	 * Installs a global function to be called whenever the user activates a
	 * URL link in an about dialog.
	 * func:
	 *  a function to call when a URL link is activated.
	 * data:
	 *  data to pass to func
	 * destroy:
	 *  GDestroyNotify for data
	 * Returns:
	 *  the previous URL hook.
	 * Since 2.6
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
	 * parent:
	 *  transient parent, or NULL for none
	 * first_property_name:
	 *  the name of the first property
	 * ...:
	 *  value of first property, followed by more properties, NULL-terminated
	 * Since 2.6
	 * Property Details
	 * The "artists" property
	 *  "artists" GStrv : Read / Write
	 * The people who contributed artwork to the program, as a NULL-terminated array of strings.
	 * Each string may contain email addresses and URLs, which will be displayed
	 * as links, see the introduction for more details.
	 * Since 2.6
	 */
	public static void showAboutDialog(Window parent, char[] firstPropertyName, ... )
	{
		// void gtk_show_about_dialog (GtkWindow *parent,  const gchar *first_property_name,  ...);
		gtk_show_about_dialog((parent is null) ? null : parent.getWindowStruct(), std.string.toStringz(firstPropertyName));
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
