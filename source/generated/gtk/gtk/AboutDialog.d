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

private import gdk.PaintableIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * The `GtkAboutDialog` offers a simple way to display information about
 * a program.
 * 
 * The shown information includes the programs' logo, name, copyright,
 * website and license. It is also possible to give credits to the authors,
 * documenters, translators and artists who have worked on the program.
 * 
 * An about dialog is typically opened when the user selects the `About`
 * option from the `Help` menu. All parts of the dialog are optional.
 * 
 * ![An example GtkAboutDialog](aboutdialog.png)
 * 
 * About dialogs often contain links and email addresses. `GtkAboutDialog`
 * displays these as clickable links. By default, it calls [func@Gtk.show_uri]
 * when a user clicks one. The behaviour can be overridden with the
 * [signal@Gtk.AboutDialog::activate-link] signal.
 * 
 * To specify a person with an email address, use a string like
 * `Edgar Allan Poe <edgar@poe.com>`. To specify a website with a title,
 * use a string like `GTK team https://www.gtk.org`.
 * 
 * To make constructing a `GtkAboutDialog` as convenient as possible, you can
 * use the function [func@Gtk.show_about_dialog] which constructs and shows
 * a dialog and keeps it around so that it can be shown again.
 * 
 * Note that GTK sets a default title of `_("About %s")` on the dialog
 * window (where `%s` is replaced by the name of the application, but in
 * order to ensure proper translation of the title, applications should
 * set the title property explicitly when constructing a `GtkAboutDialog`,
 * as shown in the following example:
 * 
 * ```c
 * GFile *logo_file = g_file_new_for_path ("./logo.png");
 * GdkTexture *example_logo = gdk_texture_new_from_file (logo_file, NULL);
 * g_object_unref (logo_file);
 * 
 * gtk_show_about_dialog (NULL,
 * "program-name", "ExampleCode",
 * "logo", example_logo,
 * "title", _("About ExampleCode"),
 * NULL);
 * ```
 * 
 * ## CSS nodes
 * 
 * `GtkAboutDialog` has a single CSS node with the name `window` and style
 * class `.aboutdialog`.
 */
public class AboutDialog : Window
{
	/** the main Gtk struct */
	protected GtkAboutDialog* gtkAboutDialog;

	/** Get the main Gtk struct */
	public GtkAboutDialog* getAboutDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAboutDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAboutDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAboutDialog* gtkAboutDialog, bool ownedRef = false)
	{
		this.gtkAboutDialog = gtkAboutDialog;
		super(cast(GtkWindow*)gtkAboutDialog, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_about_dialog_get_type();
	}

	/**
	 * Creates a new `GtkAboutDialog`.
	 *
	 * Returns: a newly created `GtkAboutDialog`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_about_dialog_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAboutDialog*) __p);
	}

	/**
	 * Creates a new section in the "Credits" page.
	 *
	 * Params:
	 *     sectionName = The name of the section
	 *     people = The people who belong to that section
	 */
	public void addCreditSection(string sectionName, string[] people)
	{
		gtk_about_dialog_add_credit_section(gtkAboutDialog, Str.toStringz(sectionName), Str.toStringzArray(people));
	}

	/**
	 * Returns the names of the artists which are displayed
	 * in the credits page.
	 *
	 * Returns: A
	 *     `NULL`-terminated string array containing the artists
	 */
	public string[] getArtists()
	{
		return Str.toStringArray(gtk_about_dialog_get_artists(gtkAboutDialog));
	}

	/**
	 * Returns the names of the authors which are displayed
	 * in the credits page.
	 *
	 * Returns: A
	 *     `NULL`-terminated string array containing the authors
	 */
	public string[] getAuthors()
	{
		return Str.toStringArray(gtk_about_dialog_get_authors(gtkAboutDialog));
	}

	/**
	 * Returns the comments string.
	 *
	 * Returns: The comments
	 */
	public string getComments()
	{
		return Str.toString(gtk_about_dialog_get_comments(gtkAboutDialog));
	}

	/**
	 * Returns the copyright string.
	 *
	 * Returns: The copyright string
	 */
	public string getCopyright()
	{
		return Str.toString(gtk_about_dialog_get_copyright(gtkAboutDialog));
	}

	/**
	 * Returns the name of the documenters which are displayed
	 * in the credits page.
	 *
	 * Returns: A
	 *     `NULL`-terminated string array containing the documenters
	 */
	public string[] getDocumenters()
	{
		return Str.toStringArray(gtk_about_dialog_get_documenters(gtkAboutDialog));
	}

	/**
	 * Returns the license information.
	 *
	 * Returns: The license information
	 */
	public string getLicense()
	{
		return Str.toString(gtk_about_dialog_get_license(gtkAboutDialog));
	}

	/**
	 * Retrieves the license type.
	 *
	 * Returns: a [enum@Gtk.License] value
	 */
	public GtkLicense getLicenseType()
	{
		return gtk_about_dialog_get_license_type(gtkAboutDialog);
	}

	/**
	 * Returns the paintable displayed as logo in the about dialog.
	 *
	 * Returns: the paintable displayed as
	 *     logo or `NULL` if the logo is unset or has been set via
	 *     [method@Gtk.AboutDialog.set_logo_icon_name]
	 */
	public PaintableIF getLogo()
	{
		auto __p = gtk_about_dialog_get_logo(gtkAboutDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p);
	}

	/**
	 * Returns the icon name displayed as logo in the about dialog.
	 *
	 * Returns: the icon name displayed as logo,
	 *     or `NULL` if the logo has been set via [method@Gtk.AboutDialog.set_logo]
	 */
	public string getLogoIconName()
	{
		return Str.toString(gtk_about_dialog_get_logo_icon_name(gtkAboutDialog));
	}

	/**
	 * Returns the program name displayed in the about dialog.
	 *
	 * Returns: The program name
	 */
	public string getProgramName()
	{
		return Str.toString(gtk_about_dialog_get_program_name(gtkAboutDialog));
	}

	/**
	 * Returns the system information that is shown in the about dialog.
	 *
	 * Returns: the system information
	 */
	public string getSystemInformation()
	{
		return Str.toString(gtk_about_dialog_get_system_information(gtkAboutDialog));
	}

	/**
	 * Returns the translator credits string which is displayed
	 * in the credits page.
	 *
	 * Returns: The translator credits string
	 */
	public string getTranslatorCredits()
	{
		return Str.toString(gtk_about_dialog_get_translator_credits(gtkAboutDialog));
	}

	/**
	 * Returns the version string.
	 *
	 * Returns: The version string
	 */
	public string getVersion()
	{
		return Str.toString(gtk_about_dialog_get_version(gtkAboutDialog));
	}

	/**
	 * Returns the website URL.
	 *
	 * Returns: The website URL
	 */
	public string getWebsite()
	{
		return Str.toString(gtk_about_dialog_get_website(gtkAboutDialog));
	}

	/**
	 * Returns the label used for the website link.
	 *
	 * Returns: The label used for the website link
	 */
	public string getWebsiteLabel()
	{
		return Str.toString(gtk_about_dialog_get_website_label(gtkAboutDialog));
	}

	/**
	 * Returns whether the license text in the about dialog is
	 * automatically wrapped.
	 *
	 * Returns: `TRUE` if the license text is wrapped
	 */
	public bool getWrapLicense()
	{
		return gtk_about_dialog_get_wrap_license(gtkAboutDialog) != 0;
	}

	/**
	 * Sets the names of the artists to be displayed
	 * in the "Credits" page.
	 *
	 * Params:
	 *     artists = the authors of the artwork
	 *         of the application
	 */
	public void setArtists(string[] artists)
	{
		gtk_about_dialog_set_artists(gtkAboutDialog, Str.toStringzArray(artists));
	}

	/**
	 * Sets the names of the authors which are displayed
	 * in the "Credits" page of the about dialog.
	 *
	 * Params:
	 *     authors = the authors of the application
	 */
	public void setAuthors(string[] authors)
	{
		gtk_about_dialog_set_authors(gtkAboutDialog, Str.toStringzArray(authors));
	}

	/**
	 * Sets the comments string to display in the about dialog.
	 *
	 * This should be a short string of one or two lines.
	 *
	 * Params:
	 *     comments = a comments string
	 */
	public void setComments(string comments)
	{
		gtk_about_dialog_set_comments(gtkAboutDialog, Str.toStringz(comments));
	}

	/**
	 * Sets the copyright string to display in the about dialog.
	 *
	 * This should be a short string of one or two lines.
	 *
	 * Params:
	 *     copyright = the copyright string
	 */
	public void setCopyright(string copyright)
	{
		gtk_about_dialog_set_copyright(gtkAboutDialog, Str.toStringz(copyright));
	}

	/**
	 * Sets the names of the documenters which are displayed
	 * in the "Credits" page.
	 *
	 * Params:
	 *     documenters = the authors of the documentation
	 *         of the application
	 */
	public void setDocumenters(string[] documenters)
	{
		gtk_about_dialog_set_documenters(gtkAboutDialog, Str.toStringzArray(documenters));
	}

	/**
	 * Sets the license information to be displayed in the
	 * about dialog.
	 *
	 * If `license` is `NULL`, the license page is hidden.
	 *
	 * Params:
	 *     license = the license information
	 */
	public void setLicense(string license)
	{
		gtk_about_dialog_set_license(gtkAboutDialog, Str.toStringz(license));
	}

	/**
	 * Sets the license of the application showing the about dialog from a
	 * list of known licenses.
	 *
	 * This function overrides the license set using
	 * [method@Gtk.AboutDialog.set_license].
	 *
	 * Params:
	 *     licenseType = the type of license
	 */
	public void setLicenseType(GtkLicense licenseType)
	{
		gtk_about_dialog_set_license_type(gtkAboutDialog, licenseType);
	}

	/**
	 * Sets the logo in the about dialog.
	 *
	 * Params:
	 *     logo = a `GdkPaintable`
	 */
	public void setLogo(PaintableIF logo)
	{
		gtk_about_dialog_set_logo(gtkAboutDialog, (logo is null) ? null : logo.getPaintableStruct());
	}

	/**
	 * Sets the icon name to be displayed as logo in the about dialog.
	 *
	 * Params:
	 *     iconName = an icon name
	 */
	public void setLogoIconName(string iconName)
	{
		gtk_about_dialog_set_logo_icon_name(gtkAboutDialog, Str.toStringz(iconName));
	}

	/**
	 * Sets the name to display in the about dialog.
	 *
	 * If `name` is not set, the string returned
	 * by `g_get_application_name()` is used.
	 *
	 * Params:
	 *     name = the program name
	 */
	public void setProgramName(string name)
	{
		gtk_about_dialog_set_program_name(gtkAboutDialog, Str.toStringz(name));
	}

	/**
	 * Sets the system information to be displayed in the about
	 * dialog.
	 *
	 * If `system_information` is `NULL`, the system information
	 * page is hidden.
	 *
	 * See [property@Gtk.AboutDialog:system-information].
	 *
	 * Params:
	 *     systemInformation = system information
	 */
	public void setSystemInformation(string systemInformation)
	{
		gtk_about_dialog_set_system_information(gtkAboutDialog, Str.toStringz(systemInformation));
	}

	/**
	 * Sets the translator credits string which is displayed in
	 * the credits page.
	 *
	 * The intended use for this string is to display the translator
	 * of the language which is currently used in the user interface.
	 * Using `gettext()`, a simple way to achieve that is to mark the
	 * string for translation:
	 *
	 * ```c
	 * GtkWidget *about = gtk_about_dialog_new ();
	 * gtk_about_dialog_set_translator_credits (GTK_ABOUT_DIALOG (about),
	 * _("translator-credits"));
	 * ```
	 *
	 * It is a good idea to use the customary `msgid` “translator-credits”
	 * for this purpose, since translators will already know the purpose of
	 * that `msgid`, and since `GtkAboutDialog` will detect if “translator-credits”
	 * is untranslated and omit translator credits.
	 *
	 * Params:
	 *     translatorCredits = the translator credits
	 */
	public void setTranslatorCredits(string translatorCredits)
	{
		gtk_about_dialog_set_translator_credits(gtkAboutDialog, Str.toStringz(translatorCredits));
	}

	/**
	 * Sets the version string to display in the about dialog.
	 *
	 * Params:
	 *     version_ = the version string
	 */
	public void setVersion(string version_)
	{
		gtk_about_dialog_set_version(gtkAboutDialog, Str.toStringz(version_));
	}

	/**
	 * Sets the URL to use for the website link.
	 *
	 * Params:
	 *     website = a URL string starting with `http://`
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
	 */
	public void setWebsiteLabel(string websiteLabel)
	{
		gtk_about_dialog_set_website_label(gtkAboutDialog, Str.toStringz(websiteLabel));
	}

	/**
	 * Sets whether the license text in the about dialog should be
	 * automatically wrapped.
	 *
	 * Params:
	 *     wrapLicense = whether to wrap the license
	 */
	public void setWrapLicense(bool wrapLicense)
	{
		gtk_about_dialog_set_wrap_license(gtkAboutDialog, wrapLicense);
	}

	/**
	 * Emitted every time a URL is activated.
	 *
	 * Applications may connect to it to override the default behaviour,
	 * which is to call [func@Gtk.show_uri].
	 *
	 * Params:
	 *     uri = the URI that is activated
	 *
	 * Returns: `TRUE` if the link has been activated
	 */
	gulong addOnActivateLink(bool delegate(string, AboutDialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-link", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
