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


module gtk.AboutDialog;

private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Dialog;
private import gtk.Widget;
private import gtk.Window;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The GtkAboutDialog offers a simple way to display information about
 * a program like its logo, name, copyright, website and license. It is
 * also possible to give credits to the authors, documenters, translators
 * and artists who have worked on the program. An about dialog is typically
 * opened when the user selects the `About` option from the `Help` menu.
 * All parts of the dialog are optional.
 * 
 * About dialogs often contain links and email addresses. GtkAboutDialog
 * displays these as clickable links. By default, it calls gtk_show_uri()
 * when a user clicks one. The behaviour can be overridden with the
 * #GtkAboutDialog::activate-link signal.
 * 
 * To specify a person with an email address, use a string like
 * "Edgar Allan Poe <edgar@poe.com>". To specify a website with a title,
 * use a string like "GTK+ team http://www.gtk.org".
 * 
 * To make constructing a GtkAboutDialog as convenient as possible, you can
 * use the function gtk_show_about_dialog() which constructs and shows a dialog
 * and keeps it around so that it can be shown again.
 * 
 * Note that GTK+ sets a default title of `_("About %s")` on the dialog
 * window (where \%s is replaced by the name of the application, but in
 * order to ensure proper translation of the title, applications should
 * set the title property explicitly when constructing a GtkAboutDialog,
 * as shown in the following example:
 * |[<!-- language="C" -->
 * gtk_show_about_dialog (NULL,
 * "program-name", "ExampleCode",
 * "logo", example_logo,
 * "title" _("About ExampleCode"),
 * NULL);
 * ]|
 * 
 * It is also possible to show a #GtkAboutDialog like any other #GtkDialog,
 * e.g. using gtk_dialog_run(). In this case, you might need to know that
 * the “Close” button returns the #GTK_RESPONSE_CANCEL response id.
 */
public class AboutDialog : Dialog
{
	/** the main Gtk struct */
	protected GtkAboutDialog* gtkAboutDialog;

	/** Get the main Gtk struct */
	public GtkAboutDialog* getAboutDialogStruct()
	{
		return gtkAboutDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAboutDialog;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkAboutDialog = cast(GtkAboutDialog*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAboutDialog* gtkAboutDialog, bool ownedRef = false)
	{
		this.gtkAboutDialog = gtkAboutDialog;
		super(cast(GtkDialog*)gtkAboutDialog, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_about_dialog_get_type();
	}

	/**
	 * Creates a new #GtkAboutDialog.
	 *
	 * Return: a newly created #GtkAboutDialog
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_about_dialog_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkAboutDialog*) p);
	}

	/**
	 * Creates a new section in the Credits page.
	 *
	 * Params:
	 *     sectionName = The name of the section
	 *     people = The people who belong to that section
	 *
	 * Since: 3.4
	 */
	public void addCreditSection(string sectionName, string[] people)
	{
		gtk_about_dialog_add_credit_section(gtkAboutDialog, Str.toStringz(sectionName), Str.toStringzArray(people));
	}

	/**
	 * Returns the string which are displayed in the artists tab
	 * of the secondary credits dialog.
	 *
	 * Return: A
	 *     %NULL-terminated string array containing the artists. The array is
	 *     owned by the about dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string[] getArtists()
	{
		return Str.toStringArray(gtk_about_dialog_get_artists(gtkAboutDialog));
	}

	/**
	 * Returns the string which are displayed in the authors tab
	 * of the secondary credits dialog.
	 *
	 * Return: A
	 *     %NULL-terminated string array containing the authors. The array is
	 *     owned by the about dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string[] getAuthors()
	{
		return Str.toStringArray(gtk_about_dialog_get_authors(gtkAboutDialog));
	}

	/**
	 * Returns the comments string.
	 *
	 * Return: The comments. The string is owned by the about
	 *     dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string getComments()
	{
		return Str.toString(gtk_about_dialog_get_comments(gtkAboutDialog));
	}

	/**
	 * Returns the copyright string.
	 *
	 * Return: The copyright string. The string is owned by the about
	 *     dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string getCopyright()
	{
		return Str.toString(gtk_about_dialog_get_copyright(gtkAboutDialog));
	}

	/**
	 * Returns the string which are displayed in the documenters
	 * tab of the secondary credits dialog.
	 *
	 * Return: A
	 *     %NULL-terminated string array containing the documenters. The
	 *     array is owned by the about dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string[] getDocumenters()
	{
		return Str.toStringArray(gtk_about_dialog_get_documenters(gtkAboutDialog));
	}

	/**
	 * Returns the license information.
	 *
	 * Return: The license information. The string is owned by the about
	 *     dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string getLicense()
	{
		return Str.toString(gtk_about_dialog_get_license(gtkAboutDialog));
	}

	/**
	 * Retrieves the license set using gtk_about_dialog_set_license_type()
	 *
	 * Return: a #GtkLicense value
	 *
	 * Since: 3.0
	 */
	public GtkLicense getLicenseType()
	{
		return gtk_about_dialog_get_license_type(gtkAboutDialog);
	}

	/**
	 * Returns the pixbuf displayed as logo in the about dialog.
	 *
	 * Return: the pixbuf displayed as logo. The
	 *     pixbuf is owned by the about dialog. If you want to keep a
	 *     reference to it, you have to call g_object_ref() on it.
	 *
	 * Since: 2.6
	 */
	public Pixbuf getLogo()
	{
		auto p = gtk_about_dialog_get_logo(gtkAboutDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Returns the icon name displayed as logo in the about dialog.
	 *
	 * Return: the icon name displayed as logo. The string is
	 *     owned by the dialog. If you want to keep a reference
	 *     to it, you have to call g_strdup() on it.
	 *
	 * Since: 2.6
	 */
	public string getLogoIconName()
	{
		return Str.toString(gtk_about_dialog_get_logo_icon_name(gtkAboutDialog));
	}

	/**
	 * Returns the program name displayed in the about dialog.
	 *
	 * Return: The program name. The string is owned by the about
	 *     dialog and must not be modified.
	 *
	 * Since: 2.12
	 */
	public string getProgramName()
	{
		return Str.toString(gtk_about_dialog_get_program_name(gtkAboutDialog));
	}

	/**
	 * Returns the translator credits string which is displayed
	 * in the translators tab of the secondary credits dialog.
	 *
	 * Return: The translator credits string. The string is
	 *     owned by the about dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string getTranslatorCredits()
	{
		return Str.toString(gtk_about_dialog_get_translator_credits(gtkAboutDialog));
	}

	/**
	 * Returns the version string.
	 *
	 * Return: The version string. The string is owned by the about
	 *     dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string getVersion()
	{
		return Str.toString(gtk_about_dialog_get_version(gtkAboutDialog));
	}

	/**
	 * Returns the website URL.
	 *
	 * Return: The website URL. The string is owned by the about
	 *     dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string getWebsite()
	{
		return Str.toString(gtk_about_dialog_get_website(gtkAboutDialog));
	}

	/**
	 * Returns the label used for the website link.
	 *
	 * Return: The label used for the website link. The string is
	 *     owned by the about dialog and must not be modified.
	 *
	 * Since: 2.6
	 */
	public string getWebsiteLabel()
	{
		return Str.toString(gtk_about_dialog_get_website_label(gtkAboutDialog));
	}

	/**
	 * Returns whether the license text in @about is
	 * automatically wrapped.
	 *
	 * Return: %TRUE if the license text is wrapped
	 *
	 * Since: 2.8
	 */
	public bool getWrapLicense()
	{
		return gtk_about_dialog_get_wrap_license(gtkAboutDialog) != 0;
	}

	/**
	 * Sets the strings which are displayed in the artists tab
	 * of the secondary credits dialog.
	 *
	 * Params:
	 *     artists = a %NULL-terminated array of strings
	 *
	 * Since: 2.6
	 */
	public void setArtists(string[] artists)
	{
		gtk_about_dialog_set_artists(gtkAboutDialog, Str.toStringzArray(artists));
	}

	/**
	 * Sets the strings which are displayed in the authors tab
	 * of the secondary credits dialog.
	 *
	 * Params:
	 *     authors = a %NULL-terminated array of strings
	 *
	 * Since: 2.6
	 */
	public void setAuthors(string[] authors)
	{
		gtk_about_dialog_set_authors(gtkAboutDialog, Str.toStringzArray(authors));
	}

	/**
	 * Sets the comments string to display in the about dialog.
	 * This should be a short string of one or two lines.
	 *
	 * Params:
	 *     comments = a comments string
	 *
	 * Since: 2.6
	 */
	public void setComments(string comments)
	{
		gtk_about_dialog_set_comments(gtkAboutDialog, Str.toStringz(comments));
	}

	/**
	 * Sets the copyright string to display in the about dialog.
	 * This should be a short string of one or two lines.
	 *
	 * Params:
	 *     copyright = the copyright string
	 *
	 * Since: 2.6
	 */
	public void setCopyright(string copyright)
	{
		gtk_about_dialog_set_copyright(gtkAboutDialog, Str.toStringz(copyright));
	}

	/**
	 * Sets the strings which are displayed in the documenters tab
	 * of the secondary credits dialog.
	 *
	 * Params:
	 *     documenters = a %NULL-terminated array of strings
	 *
	 * Since: 2.6
	 */
	public void setDocumenters(string[] documenters)
	{
		gtk_about_dialog_set_documenters(gtkAboutDialog, Str.toStringzArray(documenters));
	}

	/**
	 * Sets the license information to be displayed in the secondary
	 * license dialog. If @license is %NULL, the license button is
	 * hidden.
	 *
	 * Params:
	 *     license = the license information or %NULL
	 *
	 * Since: 2.6
	 */
	public void setLicense(string license)
	{
		gtk_about_dialog_set_license(gtkAboutDialog, Str.toStringz(license));
	}

	/**
	 * Sets the license of the application showing the @about dialog from a
	 * list of known licenses.
	 *
	 * This function overrides the license set using
	 * gtk_about_dialog_set_license().
	 *
	 * Params:
	 *     licenseType = the type of license
	 *
	 * Since: 3.0
	 */
	public void setLicenseType(GtkLicense licenseType)
	{
		gtk_about_dialog_set_license_type(gtkAboutDialog, licenseType);
	}

	/**
	 * Sets the pixbuf to be displayed as logo in the about dialog.
	 * If it is %NULL, the default window icon set with
	 * gtk_window_set_default_icon() will be used.
	 *
	 * Params:
	 *     logo = a #GdkPixbuf, or %NULL
	 *
	 * Since: 2.6
	 */
	public void setLogo(Pixbuf logo)
	{
		gtk_about_dialog_set_logo(gtkAboutDialog, (logo is null) ? null : logo.getPixbufStruct());
	}

	/**
	 * Sets the pixbuf to be displayed as logo in the about dialog.
	 * If it is %NULL, the default window icon set with
	 * gtk_window_set_default_icon() will be used.
	 *
	 * Params:
	 *     iconName = an icon name, or %NULL
	 *
	 * Since: 2.6
	 */
	public void setLogoIconName(string iconName)
	{
		gtk_about_dialog_set_logo_icon_name(gtkAboutDialog, Str.toStringz(iconName));
	}

	/**
	 * Sets the name to display in the about dialog.
	 * If this is not set, it defaults to g_get_application_name().
	 *
	 * Params:
	 *     name = the program name
	 *
	 * Since: 2.12
	 */
	public void setProgramName(string name)
	{
		gtk_about_dialog_set_program_name(gtkAboutDialog, Str.toStringz(name));
	}

	/**
	 * Sets the translator credits string which is displayed in
	 * the translators tab of the secondary credits dialog.
	 *
	 * The intended use for this string is to display the translator
	 * of the language which is currently used in the user interface.
	 * Using gettext(), a simple way to achieve that is to mark the
	 * string for translation:
	 * |[<!-- language="C" -->
	 * gtk_about_dialog_set_translator_credits (about,
	 * _("translator-credits"));
	 * ]|
	 * It is a good idea to use the customary msgid “translator-credits” for this
	 * purpose, since translators will already know the purpose of that msgid, and
	 * since #GtkAboutDialog will detect if “translator-credits” is untranslated
	 * and hide the tab.
	 *
	 * Params:
	 *     translatorCredits = the translator credits
	 *
	 * Since: 2.6
	 */
	public void setTranslatorCredits(string translatorCredits)
	{
		gtk_about_dialog_set_translator_credits(gtkAboutDialog, Str.toStringz(translatorCredits));
	}

	/**
	 * Sets the version string to display in the about dialog.
	 *
	 * Params:
	 *     versio = the version string
	 *
	 * Since: 2.6
	 */
	public void setVersion(string versio)
	{
		gtk_about_dialog_set_version(gtkAboutDialog, Str.toStringz(versio));
	}

	/**
	 * Sets the URL to use for the website link.
	 *
	 * Params:
	 *     website = a URL string starting with "http://"
	 *
	 * Since: 2.6
	 */
	public void setWebsite(string website)
	{
		gtk_about_dialog_set_website(gtkAboutDialog, Str.toStringz(website));
	}

	/**
	 * Sets the label to be used for the website link.
	 *
	 * Params:
	 *     websiteLabel = the label used for the website link
	 *
	 * Since: 2.6
	 */
	public void setWebsiteLabel(string websiteLabel)
	{
		gtk_about_dialog_set_website_label(gtkAboutDialog, Str.toStringz(websiteLabel));
	}

	/**
	 * Sets whether the license text in @about is
	 * automatically wrapped.
	 *
	 * Params:
	 *     wrapLicense = whether to wrap the license
	 *
	 * Since: 2.8
	 */
	public void setWrapLicense(bool wrapLicense)
	{
		gtk_about_dialog_set_wrap_license(gtkAboutDialog, wrapLicense);
	}

	protected class OnActivateLinkDelegateWrapper
	{
		bool delegate(string, AboutDialog) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(string, AboutDialog) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnActivateLinkDelegateWrapper[] onActivateLinkListeners;

	/**
	 * The signal which gets emitted to activate a URI.
	 * Applications may connect to it to override the default behaviour,
	 * which is to call gtk_show_uri().
	 *
	 * Params:
	 *     uri = the URI that is activated
	 *
	 * Return: %TRUE if the link has been activated
	 *
	 * Since: 2.24
	 */
	gulong addOnActivateLink(bool delegate(string, AboutDialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onActivateLinkListeners ~= new OnActivateLinkDelegateWrapper(dlg, 0, connectFlags);
		onActivateLinkListeners[onActivateLinkListeners.length - 1].handlerId = Signals.connectData(
			this,
			"activate-link",
			cast(GCallback)&callBackActivateLink,
			cast(void*)onActivateLinkListeners[onActivateLinkListeners.length - 1],
			cast(GClosureNotify)&callBackActivateLinkDestroy,
			connectFlags);
		return onActivateLinkListeners[onActivateLinkListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackActivateLink(GtkAboutDialog* aboutdialogStruct, char* uri,OnActivateLinkDelegateWrapper wrapper)
	{
		return wrapper.dlg(Str.toString(uri), wrapper.outer);
	}
	
	extern(C) static void callBackActivateLinkDestroy(OnActivateLinkDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnActivateLink(wrapper);
	}

	protected void internalRemoveOnActivateLink(OnActivateLinkDelegateWrapper source)
	{
		foreach(index, wrapper; onActivateLinkListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onActivateLinkListeners[index] = null;
				onActivateLinkListeners = std.algorithm.remove(onActivateLinkListeners, index);
				break;
			}
		}
	}
	
}
