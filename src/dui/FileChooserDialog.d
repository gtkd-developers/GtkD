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


module dui.FileChooserDialog;

version(GTK240):

private import def.Types;
private import def.Constants;

private import dui.Dialog;

private alias FileChooserAction GtkFileChooserAction;
private alias void GtkFileChooser;

private import dglib.ErrorG;

private import dui.Widget;
private:
extern(C)
{
	GtkWidget*  gtk_file_chooser_dialog_new(gchar *title,GtkWindow *parent,GtkFileChooserAction action, gchar *first_button_text,...);
	GtkWidget*  gtk_file_chooser_dialog_new_with_backend( gchar *title,GtkWindow *parent,GtkFileChooserAction action,gchar *backend,gchar *first_button_text,...);
	
	// GtkFileChooser implementation
	//GQuark      gtk_file_chooser_error_quark    ();
	void        gtk_file_chooser_set_action     (GtkFileChooser *chooser,GtkFileChooserAction action);
	GtkFileChooserAction gtk_file_chooser_get_action(GtkFileChooser *chooser);
	void        gtk_file_chooser_set_local_only (GtkFileChooser *chooser,gboolean local_only);
	gboolean    gtk_file_chooser_get_local_only (GtkFileChooser *chooser);
	void        gtk_file_chooser_set_select_multiple(GtkFileChooser *chooser,gboolean select_multiple);
	gboolean    gtk_file_chooser_get_select_multiple(GtkFileChooser *chooser);
	void        gtk_file_chooser_set_current_name(GtkFileChooser *chooser, gchar *name);
	gchar*      gtk_file_chooser_get_filename   (GtkFileChooser *chooser);
	gboolean    gtk_file_chooser_set_filename   (GtkFileChooser *chooser, char *filename);
	gboolean    gtk_file_chooser_select_filename(GtkFileChooser *chooser, char *filename);
	void        gtk_file_chooser_unselect_filename(GtkFileChooser *chooser, char *filename);
	void        gtk_file_chooser_select_all     (GtkFileChooser *chooser);
	void        gtk_file_chooser_unselect_all   (GtkFileChooser *chooser);
	GSList*     gtk_file_chooser_get_filenames  (GtkFileChooser *chooser);
	gboolean    gtk_file_chooser_set_current_folder(GtkFileChooser *chooser, gchar *filename);
	gchar*      gtk_file_chooser_get_current_folder(GtkFileChooser *chooser);
	gchar*      gtk_file_chooser_get_uri        (GtkFileChooser *chooser);
	gboolean    gtk_file_chooser_set_uri        (GtkFileChooser *chooser, char *uri);
	gboolean    gtk_file_chooser_select_uri     (GtkFileChooser *chooser, char *uri);
	void        gtk_file_chooser_unselect_uri   (GtkFileChooser *chooser, char *uri);
	GSList*     gtk_file_chooser_get_uris       (GtkFileChooser *chooser);
	gboolean    gtk_file_chooser_set_current_folder_uri(GtkFileChooser *chooser, gchar *uri);
	gchar*      gtk_file_chooser_get_current_folder_uri(GtkFileChooser *chooser);
	void        gtk_file_chooser_set_preview_widget(GtkFileChooser *chooser,GtkWidget *preview_widget);
	GtkWidget*  gtk_file_chooser_get_preview_widget(GtkFileChooser *chooser);
	void        gtk_file_chooser_set_preview_widget_active(GtkFileChooser *chooser,gboolean active);
	gboolean    gtk_file_chooser_get_preview_widget_active(GtkFileChooser *chooser);
	void        gtk_file_chooser_set_use_preview_label(GtkFileChooser *chooser,gboolean use_label);
	gboolean    gtk_file_chooser_get_use_preview_label(GtkFileChooser *chooser);
	char*       gtk_file_chooser_get_preview_filename(GtkFileChooser *chooser);
	char*       gtk_file_chooser_get_preview_uri(GtkFileChooser *chooser);
	void        gtk_file_chooser_set_extra_widget(GtkFileChooser *chooser,GtkWidget *extra_widget);
	GtkWidget*  gtk_file_chooser_get_extra_widget(GtkFileChooser *chooser);
	//void        gtk_file_chooser_add_filter     (GtkFileChooser *chooser,GtkFileFilter *filter);
	//void        gtk_file_chooser_remove_filter  (GtkFileChooser *chooser,GtkFileFilter *filter);
	GSList*     gtk_file_chooser_list_filters   (GtkFileChooser *chooser);
	//void        gtk_file_chooser_set_filter     (GtkFileChooser *chooser,GtkFileFilter *filter);
	//GtkFileFilter* gtk_file_chooser_get_filter  (GtkFileChooser *chooser);
	gboolean    gtk_file_chooser_add_shortcut_folder(GtkFileChooser *chooser, char *folder,GError **error);
	gboolean    gtk_file_chooser_remove_shortcut_folder(GtkFileChooser *chooser, char *folder,GError **error);
	GSList*     gtk_file_chooser_list_shortcut_folders(GtkFileChooser *chooser);
	gboolean    gtk_file_chooser_add_shortcut_folder_uri(GtkFileChooser *chooser, char *uri,GError **error);
	gboolean    gtk_file_chooser_remove_shortcut_folder_uri(GtkFileChooser *chooser, char *uri,GError **error);
	GSList*     gtk_file_chooser_list_shortcut_folder_uris(GtkFileChooser *chooser);
}


public
class FileChooserDialog : Dialog
{
	
	
	private import dui.Window;
	private import dui.DUIObject;
	
	private import dool.String;
	
	public:
	/**
	 * Create a ComboBox from a Gtk combo box
	 * @param *gtkWidget 
	 * @return 
	 */
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	this(char[] title, Window parent, FileChooserAction action,  String[] buttonsText=null, Response[] responses=null)
	{
		this(new String(title), parent, action, buttonsText, responses);
	}
	this(String title, Window parent, FileChooserAction action,  String[] buttonsText=null, Response[] responses=null)
	{
		if ( buttonsText === null )
		{
			buttonsText ~= new String("OK");
			buttonsText ~= new String("Cancel");
		}
		if ( responses === null )
		{
			responses ~= Response.OK;
			responses ~= Response.CANCEL;
		}

		this(gtk_file_chooser_dialog_new(
				title.toStringz(),
				cast(GtkWindow*)parent.gtkW(),
				action,
				null,
				0));
		addButtons(buttonsText, responses);
	}

	this(char[] title, Window parent, FileChooserAction action,  Stock[] buttons, Response[] responses)
	{
		this(new String(title), parent, action, buttons, responses);
	}
	this(String title, Window parent, FileChooserAction action,  Stock[] buttons, Response[] responses)
	{
		if ( buttons === null )
		{
			buttons ~= Stock.OK;
			buttons ~= Stock.CANCEL;
		}
		if ( responses === null )
		{
			responses ~= Response.OK;
			responses ~= Response.CANCEL;
		}

		this(gtk_file_chooser_dialog_new(
				title.toStringz(),
				cast(GtkWindow*)parent.gtkW(),
				action,
				null,
				0));
		addButtons(buttons, responses);
	}

	// GtkFileChooser implementation
	//GQuark      gtk_file_chooser_error_quark    ();

	/**
	 * 
	 * @param action
	 */
	void setAction(FileChooserAction action)
	{
		gtk_file_chooser_set_action(cast(GtkFileChooser*)gtkW(), action);
	}

	/**
	 * 
	 * @return 
	 */
	FileChooserAction getAction()
	{
		return gtk_file_chooser_get_action(cast(GtkFileChooser*)gtkW());
	}

	/**
	 * 
	 * @param localOnly
	 */
	void setLocalOnly(bit localOnly)
	{
		gtk_file_chooser_set_local_only(cast(GtkFileChooser*)gtkW(), localOnly);
	}

	/**
	 * 
	 * @return 
	 */
	bit getLocalOnly()
	{
		return gtk_file_chooser_get_local_only(cast(GtkFileChooser*)gtkW()) == 0 ? false : true;
	}

	/**
	 * 
	 * @param selectMultiple
	 */
	void setSelectMultiple(bit selectMultiple)
	{
		gtk_file_chooser_set_select_multiple(cast(GtkFileChooser*)gtkW(), selectMultiple);
	}

	/**
	 * 
	 * @return 
	 */
	bit getSelectMultiple()
	{
		return gtk_file_chooser_get_select_multiple(cast(GtkFileChooser*)gtkW()) == 0 ? false : true;
	}

	/**
	 * 
	 * @param name
	 */
	void setCurrentName(String name)
	{
		gtk_file_chooser_set_current_name(cast(GtkFileChooser*)gtkW(), name.toStringz());
	}

	/**
	 * 
	 * @return 
	 */
	String getFilename()
	{
		return String.newz(gtk_file_chooser_get_filename(cast(GtkFileChooser*)gtkW()));
	}

	/**
	 * 
	 * @param filename
	 * @return 
	 */
	bit setFilename(String filename)
	{
		return gtk_file_chooser_set_filename(cast(GtkFileChooser*)gtkW(), filename.toStringz()) == 0 ? false : true;
	}

	/**
	 * 
	 * @param filename
	 * @return 
	 */
	bit selectFilename(String filename)
	{
		return gtk_file_chooser_select_filename(cast(GtkFileChooser*)gtkW(), filename.toStringz()) == 0 ? false : true;
	}

	/**
	 * 
	 * @param filename
	 */
	void unselectFilename(String filename)
	{
		gtk_file_chooser_unselect_filename(cast(GtkFileChooser*)gtkW(), filename.toStringz());
	}

	/**
	 * 
	 */
	void selectAll()
	{
		gtk_file_chooser_select_all(cast(GtkFileChooser*)gtkW());
	}

	/**
	 * 
	 */
	void unselectAll()
	{
		gtk_file_chooser_unselect_all(cast(GtkFileChooser*)gtkW());
	}

	/**
	 * 
	 * @return 
	 */
	GSList* getFilenames()
	{
		return gtk_file_chooser_get_filenames(cast(GtkFileChooser*)gtkW());
	}

	/**
	 * 
	 * @param filename
	 * @return 
	 */
	bit setCurrentFolder(String filename)
	{
		return gtk_file_chooser_set_current_folder(cast(GtkFileChooser*)gtkW(), filename.toStringz()) == 0 ? false : true;
	}

	/**
	 * 
	 * @return 
	 */
	String getCurrentFolder()
	{
		return String.newz(gtk_file_chooser_get_current_folder(cast(GtkFileChooser*)gtkW()));
	}

	/**
	 * 
	 * @return 
	 */
	String getUri()
	{
		return String.newz(gtk_file_chooser_get_uri(cast(GtkFileChooser*)gtkW()));
	}

	/**
	 * 
	 * @param uri
	 * @return 
	 */
	bit setUri(String uri)
	{
		return gtk_file_chooser_set_uri(cast(GtkFileChooser*)gtkW(), uri.toStringz()) == 0 ? false : true;
	}

	/**
	 * 
	 * @param uri
	 * @return 
	 */
	bit selectUri(String uri)
	{
		return gtk_file_chooser_select_uri(cast(GtkFileChooser*)gtkW(), uri.toStringz()) == 0 ? false : true;
	}

	/**
	 * 
	 * @param uri
	 */
	void unselectUri(String uri)
	{
		gtk_file_chooser_unselect_uri(cast(GtkFileChooser*)gtkW(), uri.toStringz());
	}

	/**
	 * 
	 * @return 
	 */
	GSList* getUris()
	{
		return gtk_file_chooser_get_uris(cast(GtkFileChooser*)gtkW());
	}

	/**
	 * 
	 * @param uri
	 * @return 
	 */
	bit setCurrentFolderUri(String uri)
	{
		return gtk_file_chooser_set_current_folder_uri(cast(GtkFileChooser*)gtkW(), uri.toStringz()) == 0 ? false : true;
	}

	/**
	 * 
	 * @return 
	 */
	String getCurrentFolderUri()
	{
		return String.newz(gtk_file_chooser_get_current_folder_uri(cast(GtkFileChooser*)gtkW()));
	}

	/**
	 * 
	 * @param previewWidget
	 */
	void setPreviewWidget(Widget previewWidget)
	{
		gtk_file_chooser_set_preview_widget(cast(GtkFileChooser*)gtkW(), previewWidget.gtkW());
	}

	/**
	 * 
	 * @return 
	 */
	Widget getPreviewWidget()
	{
		return new Widget(gtk_file_chooser_get_preview_widget(cast(GtkFileChooser*)gtkW()));
	}

	/**
	 * 
	 * @param active
	 */
	void setPreviewWidgetActive(bit active)
	{
		gtk_file_chooser_set_preview_widget_active(cast(GtkFileChooser*)gtkW(), active);
	}

	/**
	 * 
	 * @return 
	 */
	bit getPreviewWidgetActive()
	{
		return gtk_file_chooser_get_preview_widget_active(cast(GtkFileChooser*)gtkW()) == 0 ? false : true;
	}

	/**
	 * 
	 * @param useLabel
	 */
	void setUsePreviewLabel(bit useLabel)
	{
		gtk_file_chooser_set_use_preview_label(cast(GtkFileChooser*)gtkW(), useLabel);
	}

	/**
	 * 
	 * @return 
	 */
	bit getUsePreviewLabel()
	{
		return gtk_file_chooser_get_use_preview_label(cast(GtkFileChooser*)gtkW()) == 0 ? false : true;
	}

	/**
	 * 
	 * @return 
	 */
	String getPreviewFilename()
	{
		return String.newz(gtk_file_chooser_get_preview_filename(cast(GtkFileChooser*)gtkW()));
	}

	/**
	 * 
	 * @return 
	 */
	String getPreviewUri()
	{
		return String.newz(gtk_file_chooser_get_preview_uri(cast(GtkFileChooser*)gtkW()));
	}

	/**
	 * 
	 * @param extraWidget
	 */
	void setExtraWidget(Widget extraWidget)
	{
		gtk_file_chooser_set_extra_widget(cast(GtkFileChooser*)gtkW(), extraWidget.gtkW());
	}

	/**
	 * 
	 * @return 
	 */
	Widget getExtraWidget()
	{
		return new Widget(gtk_file_chooser_get_extra_widget(cast(GtkFileChooser*)gtkW()));
	}

//	/**
//	 * 
//	 * @param filter
//	 * @return 
//	 */
//	//void AddFilter(FileFilter *filter)
//	{
//		return gtk_file_chooser_add_filter(cast(GtkFileChooser*)gtkW(), *filter));
//	}
//
//	/**
//	 * 
//	 * @param filter
//	 * @return 
//	 */
//	//void RemoveFilter(FileFilter *filter)
//	{
//		return gtk_file_chooser_remove_filter(cast(GtkFileChooser*)gtkW(), *filter));
//	}

	/**
	 * 
	 * @return 
	 */
	GSList* listFilters()
	{
		return gtk_file_chooser_list_filters(cast(GtkFileChooser*)gtkW());
	}

//	/**
//	 * 
//	 * @param filter
//	 * @return 
//	 */
//	//void setFilter(FileFilter *filter)
//	{
//		return gtk_file_chooser_set_filter(cast(GtkFileChooser*)gtkW(), *filter));
//	}
//
//	/**
//	 * 
//	 * @return 
//	 */
//	//GtkFileFilter* getFilter()
//	{
//		return gtk_file_chooser_get_filter(cast(GtkFileChooser*)gtkW()));
//	}

	/**
	 * 
	 * @param folder
	 * @param *error
	 * @return 
	 */
	bit addShortcutFolder(String folder, GError **error)
	{
		return gtk_file_chooser_add_shortcut_folder(cast(GtkFileChooser*)gtkW(), folder.toStringz(), error) == 0 ? false : true;
	}

	/**
	 * 
	 * @param folder
	 * @param *error
	 * @return 
	 */
	bit removeShortcutFolder(String folder, GError **error)
	{
		return gtk_file_chooser_remove_shortcut_folder(cast(GtkFileChooser*)gtkW(), folder.toStringz(), error) == 0 ? false : true;
	}

	/**
	 * 
	 * @return 
	 */
	GSList* listShortcutFolders()
	{
		return gtk_file_chooser_list_shortcut_folders(cast(GtkFileChooser*)gtkW());
	}

	/**
	 * 
	 * @param uri
	 * @param *error
	 * @return 
	 */
	bit addShortcutFolderUri(String uri, GError **error)
	{
		return gtk_file_chooser_add_shortcut_folder_uri(cast(GtkFileChooser*)gtkW(), uri.toStringz(), error) == 0 ? false : true;
	}

	/**
	 * 
	 * @param uri
	 * @param *error
	 * @return 
	 */
	bit removeShortcutFolderUri(String uri, GError **error)
	{
		return gtk_file_chooser_remove_shortcut_folder_uri(cast(GtkFileChooser*)gtkW(), uri.toStringz(), error) == 0 ? false : true;
	}

	/**
	 * 
	 * @return 
	 */
	GSList* listShortcutFolderUris()
	{
		return gtk_file_chooser_list_shortcut_folder_uris(cast(GtkFileChooser*)gtkW());
	}
	
}
	