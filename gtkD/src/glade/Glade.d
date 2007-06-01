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
 * inFile  = GladeXML.html
 * outPack = glade
 * outFile = Glade
 * strct   = GladeXML
 * realStrct=
 * ctorStrct=
 * clss    = Glade
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- glade_xml_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- glade_xml_signal_autoconnect
 * 	- glade_xml_signal_connect_data
 * 	- glade_xml_signal_connect
 * 	- glade_xml_signal_connect_full
 * 	- glade_xml_signal_autoconnect_full
 * 	- GladeXMLConnectFunc
 * 	- GladeXMLCustomWidgetHandler
 * 	- glade_set_custom_handler
 * 	- glade_xml_get_widget
 * 	- glade_xml_new
 * 	- glade_xml_get_widget_prefix
 * imports:
 * 	- gtk.Widget
 * 	- gobject.ObjectG
 * 	- glib.ListG
 * 	- glib.Str
 * structWrap:
 * 	- GList* -> ListG
 * 	- GObject* -> ObjectG
 * 	- GladeXML* -> Glade
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module glade.Glade;

private import gtkc.gladetypes;

private import gtkc.glade;


private import gtk.Widget;
private import gobject.ObjectG;
private import glib.ListG;
private import glib.Str;




/**
 * Description
 * This object represents an `instantiation' of an XML interface description.
 * When one of these objects is created, the XML file is read, and the
 * interface is created. The GladeXML object then provides an interface for
 * accessing the widgets in the interface by the names assigned to them
 * inside the XML description.
 * The GladeXML object can also be used to connect handlers to the named
 * signals in the description. Libglade also provides an interface by which
 * it can look up the signal handler names in the program's symbol table and
 * automatically connect as many handlers up as it can that way.
 */
private import gobject.ObjectG;
public class Glade : ObjectG
{
	
	/** the main Gtk struct */
	protected GladeXML* gladeXML;
	
	
	public GladeXML* getGladeStruct()
	{
		return gladeXML;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gladeXML;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GladeXML* gladeXML)
	{
		assert(gladeXML !is null, "struct gladeXML is null on constructor");
		super(cast(GObject*)gladeXML);
		this.gladeXML = gladeXML;
	}
	
	/**
	 * This function is used to get a pointer to the GtkWidget corresponding to
	 * name in the interface description. You would use this if you have to do
	 * anything to the widget after loading.
	 * self:
	 *  the GladeXML object.
	 * name:
	 *  the name of the widget.
	 * Returns:
	 *  the widget matching name, or NULL if none exists.
	 */
	public Widget getWidget(char[] name)
	{
		// GtkWidget* glade_xml_get_widget (GladeXML *self,  const char *name);
		return newFromWidget(cast(void *) glade_xml_get_widget(gladeXML, Str.toStringz(name)) );
	}
	
	
	
	
	
	
	/**
	 * Creates a new GladeXML object (and the corresponding widgets) from the
	 * XML file fname. Optionally it will only build the interface from the
	 * widget node root (if it is not NULL). This feature is useful if you
	 * only want to build say a toolbar or menu from the XML file, but not the
	 * window it is embedded in. Note also that the XML parse tree is cached
	 * to speed up creating another GladeXML object for the same file
	 * fname:
	 *  the XML file name.
	 * root:
	 *  the widget node in fname to start building from (or NULL)
	 * domain:
	 *  the translation domain for the XML file (or NULL for default)
	 * Returns:
	 *  the newly created GladeXML object, or NULL on failure.
	 */
	public this (char[] fname, char[] root = null, char[] domain=null)
	{
		// GladeXML* glade_xml_new (const char *fname,  const char *root,  const char *domain);
		this(cast(GladeXML*)glade_xml_new(Str.toStringz(fname),
		root ? Str.toStringz(root) : null,
		domain ? Str.toStringz(domain) : null) );
	}
	
	/**
	 * This function is used to get a list of pointers to the GtkWidget(s)
	 * with names that start with the string name in the interface description.
	 * You would use this if you have to do something to all of these widgets
	 * after loading.
	 * self:
	 *  the GladeXML object.
	 * name:
	 *  the name of the widget.
	 * Returns:
	 *  A list of the widget that match name as the start of their
	 * name, or NULL if none exists.
	 */
	public Widget[] getWidgetPrefix(char[] name)
	{
		// GList* glade_xml_get_widget_prefix (GladeXML *self,  const char *name);
		Widget[] ret;
		ListG widgets = new ListG( glade_xml_get_widget_prefix(gladeXML, Str.toStringz(name)) );
		for (int i=0;i < widgets.length; i++) {
			ret ~= newFromWidget( cast(void *)widgets.nthData(i) );
		}
		return widgets.length ? ret : null;
	}
	
	
	/**
	 * Utilitiy method to create objects that are castable.
	 *
	 */
	private import gobject.Type;
	private import gtk.Container;
	private import gtk.Bin;
	private import gtk.Window;
	private import gtk.Dialog;
	private import gtk.AboutDialog;
	private import gtk.ColorSelectionDialog;
	private import gtk.FileChooserDialog;
	private import gtk.FileSelection;
	private import gtk.FontSelectionDialog;
	private import gtk.InputDialog;
	private import gtk.MessageDialog;
	//private import gtk.PageSetupUnixDialog;
	//private import gtk.PrintUnixDialog;
	//private import gtk.RecentChooserDialog;
	private import gtk.Assistant;
	private import gtk.Plug;
	private import gtk.Alignment;
	private import gtk.Frame;
	private import gtk.AspectFrame;
	private import gtk.Button;
	private import gtk.ToggleButton;
	private import gtk.CheckButton;
	private import gtk.RadioButton;
	private import gtk.ColorButton;
	private import gtk.FontButton;
	//private import gtk.LinkButton;
	//private import gtk.OptionMenu;
	private import gtk.Item;
	private import gtk.MenuItem;
	private import gtk.CheckMenuItem;
	private import gtk.RadioMenuItem;
	private import gtk.ImageMenuItem;
	private import gtk.SeparatorMenuItem;
	private import gtk.TearoffMenuItem;
	//private import gtk.ListItem;
	//private import gtk.TreeItem;
	private import gtk.ComboBox;
	private import gtk.ComboBoxEntry;
	private import gtk.EventBox;
	private import gtk.Expander;
	private import gtk.HandleBox;
	private import gtk.ToolItem;
	private import gtk.ToolButton;
	private import gtk.MenuToolButton;
	private import gtk.ToggleToolButton;
	private import gtk.RadioToolButton;
	private import gtk.SeparatorToolItem;
	private import gtk.ScrolledWindow;
	private import gtk.Viewport;
	private import gtk.Box;
	private import gtk.ButtonBox;
	private import gtk.HButtonBox;
	private import gtk.VButtonBox;
	private import gtk.VBox;
	private import gtk.ColorSelection;
	private import gtk.FileChooserWidget;
	private import gtk.FontSelection;
	private import gtk.GammaCurve;
	//private import gtk.RecentChooserWidget;
	private import gtk.HBox;
	//private import gtk.Combo;
	private import gtk.FileChooserButton;
	private import gtk.Statusbar;
	//private import gtk.CList;
	//private import gtk.CTree;
	private import gtk.Fixed;
	private import gtk.Paned;
	private import gtk.HPaned;
	private import gtk.VPaned;
	private import gtk.IconView;
	private import gtk.Layout;
	//private import gtk.List;
	private import gtk.MenuShell;
	private import gtk.MenuBar;
	private import gtk.Menu;
	//private import gtk.RecentChooserMenu;
	private import gtk.Notebook;
	private import gtk.Socket;
	private import gtk.Table;
	private import gtk.TextView;
	private import gtk.Toolbar;
	//private import gtk.Tree;
	private import gtk.TreeView;
	private import gtk.Misc;
	private import gtk.Label;
	private import gtk.AccelLabel;
	//private import gtk.TipsQuery;
	private import gtk.Arrow;
	private import gtk.Image;
	//private import gtk.Pixmap;
	private import gtk.Calendar;
	private import gtk.CellView;
	private import gtk.DrawingArea;
	private import gtk.Curve;
	private import gtk.Entry;
	private import gtk.SpinButton;
	private import gtk.Ruler;
	private import gtk.HRuler;
	private import gtk.VRuler;
	private import gtk.Range;
	private import gtk.Scale;
	private import gtk.HScale;
	private import gtk.VScale;
	private import gtk.Scrollbar;
	private import gtk.HScrollbar;
	private import gtk.VScrollbar;
	private import gtk.Separator;
	private import gtk.HSeparator;
	private import gtk.VSeparator;
	private import gtk.Invisible;
	//private import gtk.OldEditable;
	//private import gtk.Text;
	//private import gtk.Preview;
	private import gtk.Progress;
	private import gtk.ProgressBar;
	
	Widget newFromWidget(void * ptr)
	{
		if (ptr is null) {
			return null;
		}
		
		int* pt =cast(int*)ptr;
		
		int* pt2 =cast(int*) (cast(int*)(*pt));
		uint utype =  cast(uint)(*pt2);
		
		char[] tname = Type.name(cast(GType)utype);
		
		switch(tname) {
			case "GtkContainer": return new Container(cast(GtkContainer *)ptr);
			case "GtkBin": return new Bin(cast(GtkBin *)ptr);
			case "GtkWindow": return new Window(cast(GtkWindow *)ptr);
			case "GtkDialog": return new Dialog(cast(GtkDialog *)ptr);
			case "GtkAboutDialog": return new AboutDialog(cast(GtkAboutDialog *)ptr);
			case "GtkColorSelectionDialog": return new ColorSelectionDialog(cast(GtkColorSelectionDialog *)ptr);
			case "GtkFileChooserDialog": return new FileChooserDialog(cast(GtkFileChooserDialog *)ptr);
			case "GtkFileSelection": return new FileSelection(cast(GtkFileSelection *)ptr);
			case "GtkFontSelectionDialog": return new FontSelectionDialog(cast(GtkFontSelectionDialog *)ptr);
			case "GtkInputDialog": return new InputDialog(cast(GtkInputDialog *)ptr);
			case "GtkMessageDialog": return new MessageDialog(cast(GtkMessageDialog *)ptr);
			//case "GtkPageSetupUnixDialog": return new PageSetupUnixDialog(cast(GtkPageSetupUnixDialog *)ptr);
			//case "GtkPrintUnixDialog": return new PrintUnixDialog(cast(GtkPrintUnixDialog *)ptr);
			//case "GtkRecentChooserDialog": return new RecentChooserDialog(cast(GtkRecentChooserDialog *)ptr);
			case "GtkAssistant": return new Assistant(cast(GtkAssistant *)ptr);
			case "GtkPlug": return new Plug(cast(GtkPlug *)ptr);
			case "GtkAlignment": return new Alignment(cast(GtkAlignment *)ptr);
			case "GtkFrame": return new Frame(cast(GtkFrame *)ptr);
			case "GtkAspectFrame": return new AspectFrame(cast(GtkAspectFrame *)ptr);
			case "GtkButton": return new Button(cast(GtkButton *)ptr);
			case "GtkToggleButton": return new ToggleButton(cast(GtkToggleButton *)ptr);
			case "GtkCheckButton": return new CheckButton(cast(GtkCheckButton *)ptr);
			case "GtkRadioButton": return new RadioButton(cast(GtkRadioButton *)ptr);
			case "GtkColorButton": return new ColorButton(cast(GtkColorButton *)ptr);
			case "GtkFontButton": return new FontButton(cast(GtkFontButton *)ptr);
			//case "GtkLinkButton": return new LinkButton(cast(GtkLinkButton *)ptr);
			//case "GtkOptionMenu": return new OptionMenu(cast(GtkOptionMenu *)ptr);
			case "GtkItem": return new Item(cast(GtkItem *)ptr);
			case "GtkMenuItem": return new MenuItem(cast(GtkMenuItem *)ptr);
			case "GtkCheckMenuItem": return new CheckMenuItem(cast(GtkCheckMenuItem *)ptr);
			case "GtkRadioMenuItem": return new RadioMenuItem(cast(GtkRadioMenuItem *)ptr);
			case "GtkImageMenuItem": return new ImageMenuItem(cast(GtkImageMenuItem *)ptr);
			case "GtkSeparatorMenuItem": return new SeparatorMenuItem(cast(GtkSeparatorMenuItem *)ptr);
			case "GtkTearoffMenuItem": return new TearoffMenuItem(cast(GtkTearoffMenuItem *)ptr);
			//case "GtkListItem": return new ListItem(cast(GtkListItem *)ptr);
			//case "GtkTreeItem": return new TreeItem(cast(GtkTreeItem *)ptr);
			case "GtkComboBox": return new ComboBox(cast(GtkComboBox *)ptr);
			case "GtkComboBoxEntry": return new ComboBoxEntry(cast(GtkComboBoxEntry *)ptr);
			case "GtkEventBox": return new EventBox(cast(GtkEventBox *)ptr);
			case "GtkExpander": return new Expander(cast(GtkExpander *)ptr);
			case "GtkHandleBox": return new HandleBox(cast(GtkHandleBox *)ptr);
			case "GtkToolItem": return new ToolItem(cast(GtkToolItem *)ptr);
			case "GtkToolButton": return new ToolButton(cast(GtkToolButton *)ptr);
			case "GtkMenuToolButton": return new MenuToolButton(cast(GtkMenuToolButton *)ptr);
			case "GtkToggleToolButton": return new ToggleToolButton(cast(GtkToggleToolButton *)ptr);
			case "GtkRadioToolButton": return new RadioToolButton(cast(GtkRadioToolButton *)ptr);
			case "GtkSeparatorToolItem": return new SeparatorToolItem(cast(GtkSeparatorToolItem *)ptr);
			case "GtkScrolledWindow": return new ScrolledWindow(cast(GtkScrolledWindow *)ptr);
			case "GtkViewport": return new Viewport(cast(GtkViewport *)ptr);
			case "GtkBox": return new Box(cast(GtkBox *)ptr);
			case "GtkButtonBox": return new ButtonBox(cast(GtkButtonBox *)ptr);
			case "GtkHButtonBox": return new HButtonBox(cast(GtkHButtonBox *)ptr);
			case "GtkVButtonBox": return new VButtonBox(cast(GtkVButtonBox *)ptr);
			case "GtkVBox": return new VBox(cast(GtkVBox *)ptr);
			case "GtkColorSelection": return new ColorSelection(cast(GtkColorSelection *)ptr);
			case "GtkFileChooserWidget": return new FileChooserWidget(cast(GtkFileChooserWidget *)ptr);
			case "GtkFontSelection": return new FontSelection(cast(GtkFontSelection *)ptr);
			case "GtkGammaCurve": return new GammaCurve(cast(GtkGammaCurve *)ptr);
			//case "GtkRecentChooserWidget": return new RecentChooserWidget(cast(GtkRecentChooserWidget *)ptr);
			case "GtkHBox": return new HBox(cast(GtkHBox *)ptr);
			//case "GtkCombo": return new Combo(cast(GtkCombo *)ptr);
			case "GtkFileChooserButton": return new FileChooserButton(cast(GtkFileChooserButton *)ptr);
			case "GtkStatusbar": return new Statusbar(cast(GtkStatusbar *)ptr);
			//case "GtkCList": return new CList(cast(GtkCList *)ptr);
			//case "GtkCTree": return new CTree(cast(GtkCTree *)ptr);
			case "GtkFixed": return new Fixed(cast(GtkFixed *)ptr);
			case "GtkPaned": return new Paned(cast(GtkPaned *)ptr);
			case "GtkHPaned": return new HPaned(cast(GtkHPaned *)ptr);
			case "GtkVPaned": return new VPaned(cast(GtkVPaned *)ptr);
			case "GtkIconView": return new IconView(cast(GtkIconView *)ptr);
			case "GtkLayout": return new Layout(cast(GtkLayout *)ptr);
			//case "GtkList": return new List(cast(GtkList *)ptr);
			case "GtkMenuShell": return new MenuShell(cast(GtkMenuShell *)ptr);
			case "GtkMenuBar": return new MenuBar(cast(GtkMenuBar *)ptr);
			case "GtkMenu": return new Menu(cast(GtkMenu *)ptr);
			//case "GtkRecentChooserMenu": return new RecentChooserMenu(cast(GtkRecentChooserMenu *)ptr);
			case "GtkNotebook": return new Notebook(cast(GtkNotebook *)ptr);
			case "GtkSocket": return new Socket(cast(GtkSocket *)ptr);
			case "GtkTable": return new Table(cast(GtkTable *)ptr);
			case "GtkTextView": return new TextView(cast(GtkTextView *)ptr);
			case "GtkToolbar": return new Toolbar(cast(GtkToolbar *)ptr);
			//case "GtkTree": return new Tree(cast(GtkTree *)ptr);
			case "GtkTreeView": return new TreeView(cast(GtkTreeView *)ptr);
			case "GtkMisc": return new Misc(cast(GtkMisc *)ptr);
			case "GtkLabel": return new Label(cast(GtkLabel *)ptr);
			case "GtkAccelLabel": return new AccelLabel(cast(GtkAccelLabel *)ptr);
			//case "GtkTipsQuery": return new TipsQuery(cast(GtkTipsQuery *)ptr);
			case "GtkArrow": return new Arrow(cast(GtkArrow *)ptr);
			case "GtkImage": return new Image(cast(GtkImage *)ptr);
			//case "GtkPixmap": return new Pixmap(cast(GtkPixmap *)ptr);
			case "GtkCalendar": return new Calendar(cast(GtkCalendar *)ptr);
			case "GtkCellView": return new CellView(cast(GtkCellView *)ptr);
			case "GtkDrawingArea": return new DrawingArea(cast(GtkDrawingArea *)ptr);
			case "GtkCurve": return new Curve(cast(GtkCurve *)ptr);
			case "GtkEntry": return new Entry(cast(GtkEntry *)ptr);
			case "GtkSpinButton": return new SpinButton(cast(GtkSpinButton *)ptr);
			case "GtkRuler": return new Ruler(cast(GtkRuler *)ptr);
			case "GtkHRuler": return new HRuler(cast(GtkHRuler *)ptr);
			case "GtkVRuler": return new VRuler(cast(GtkVRuler *)ptr);
			case "GtkRange": return new Range(cast(GtkRange *)ptr);
			case "GtkScale": return new Scale(cast(GtkScale *)ptr);
			case "GtkHScale": return new HScale(cast(GtkHScale *)ptr);
			case "GtkVScale": return new VScale(cast(GtkVScale *)ptr);
			case "GtkScrollbar": return new Scrollbar(cast(GtkScrollbar *)ptr);
			case "GtkHScrollbar": return new HScrollbar(cast(GtkHScrollbar *)ptr);
			case "GtkVScrollbar": return new VScrollbar(cast(GtkVScrollbar *)ptr);
			case "GtkSeparator": return new Separator(cast(GtkSeparator *)ptr);
			case "GtkHSeparator": return new HSeparator(cast(GtkHSeparator *)ptr);
			case "GtkVSeparator": return new VSeparator(cast(GtkVSeparator *)ptr);
			case "GtkInvisible": return new Invisible(cast(GtkInvisible *)ptr);
			//case "GtkOldEditable": return new OldEditable(cast(GtkOldEditable *)ptr);
			//case "GtkText": return new Text(cast(GtkText *)ptr);
			//case "GtkPreview": return new Preview(cast(GtkPreview *)ptr);
			case "GtkProgress": return new Progress(cast(GtkProgress *)ptr);
			case "GtkProgressBar": return new ProgressBar(cast(GtkProgressBar *)ptr);
			default: return null;
		}
		
	}
	
	
	
	
	
	
	
	
	/**
	 * Description
	 * These routines are used to initialise libglade, and to load addon modules
	 * that recognise extra widget sets. The glade_init
	 * routine must be called before any libglade routines are used, and the
	 * glade_load_module routine would be used to load
	 * extra modules.
	 */
	
	
	
	
	/**
	 * Creates a new GladeXML object (and the corresponding widgets) from the
	 * buffer buffer. Optionally it will only build the interface from the
	 * widget node root (if it is not NULL). This feature is useful if you
	 * only want to build say a toolbar or menu from the XML document, but not the
	 * window it is embedded in.
	 * buffer:
	 *  the memory buffer containing the XML document.
	 * size:
	 *  the size of the buffer.
	 * root:
	 *  the widget node in buffer to start building from (or NULL)
	 * domain:
	 *  the translation domain to use for this interface (or NULL)
	 * Returns:
	 *  the newly created GladeXML object, or NULL on failure.
	 */
	public this (char[] buffer, int size, char[] root, char[] domain)
	{
		// GladeXML* glade_xml_new_from_buffer (const char *buffer,  int size,  const char *root,  const char *domain);
		this(cast(GladeXML*)glade_xml_new_from_buffer(Str.toStringz(buffer), size, Str.toStringz(root), Str.toStringz(domain)) );
	}
	
	/**
	 * This routine can be used by bindings (such as gtk--) to help construct
	 * a GladeXML object, if it is needed.
	 * self:
	 *  the GladeXML object
	 * fname:
	 *  the XML filename
	 * root:
	 *  the root widget node (or NULL for none)
	 * domain:
	 *  the translation domain (or NULL for the default)
	 * Returns:
	 *  TRUE if the construction succeeded.
	 */
	public int construct(char[] fname, char[] root, char[] domain)
	{
		// gboolean glade_xml_construct (GladeXML *self,  const char *fname,  const char *root,  const char *domain);
		return glade_xml_construct(gladeXML, Str.toStringz(fname), Str.toStringz(root), Str.toStringz(domain));
	}
	
	
	
	
	
	
	/**
	 * Used to get the name of a widget that was generated by a GladeXML object.
	 * widget:
	 *  the widget
	 * Returns:
	 *  the name of the widget.
	 */
	public static char[] gladeGetWidgetName(Widget widget)
	{
		// const char* glade_get_widget_name (GtkWidget *widget);
		return Str.toString(glade_get_widget_name((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	/**
	 * This function is used to get the GladeXML object that built this widget.
	 * widget:
	 *  the widget
	 * Returns:
	 *  the GladeXML object that built this widget.
	 */
	public static Glade gladeGetWidgetTree(Widget widget)
	{
		// GladeXML* glade_get_widget_tree (GtkWidget *widget);
		return new Glade( glade_get_widget_tree((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	
	
	
	
	
	/**
	 * It used to be necessary to call glade_init() before creating
	 * GladeXML objects. This is now no longer the case, as libglade will
	 * be initialised on demand now. Calling glade_init() manually will
	 * not cause any problems though.
	 */
	public static void init()
	{
		// void glade_init (void);
		glade_init();
	}
	
	/**
	 * Ensure that a required library is available. If it is not already
	 * available, libglade will attempt to dynamically load a module that
	 * contains the handlers for that library.
	 * library:
	 *  the required library
	 */
	public static void require(char[] library)
	{
		// void glade_require (const gchar *library);
		glade_require(Str.toStringz(library));
	}
	
	/**
	 * This function should be called by a module to assert that it
	 * provides wrappers for a particular library. This should be called
	 * by the register_widgets() function of a libglade module so that it
	 * isn't loaded twice, for instance.
	 * library:
	 *  the provided library
	 */
	public static void provide(char[] library)
	{
		// void glade_provide (const gchar *library);
		glade_provide(Str.toStringz(library));
	}
}
