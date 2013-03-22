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
 * inFile  = GtkLabel.html
 * outPack = gtk
 * outFile = Label
 * strct   = GtkLabel
 * realStrct=
 * ctorStrct=
 * clss    = Label
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_label_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_label_new
 * 	- gtk_label_new_with_mnemonic
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Menu
 * 	- gtk.Widget
 * 	- pango.PgAttributeList
 * 	- pango.PgLayout
 * structWrap:
 * 	- GtkMenu* -> Menu
 * 	- GtkWidget* -> Widget
 * 	- PangoAttrList* -> PgAttributeList
 * 	- PangoLayout* -> PgLayout
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Label;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Menu;
private import gtk.Widget;
private import pango.PgAttributeList;
private import pango.PgLayout;



private import gtk.Misc;

/**
 * The GtkLabel widget displays a small amount of text. As the name
 * implies, most labels are used to label another widget such as a
 * GtkButton, a GtkMenuItem, or a GtkComboBox.
 *
 * GtkLabel as GtkBuildable
 *
 * The GtkLabel implementation of the GtkBuildable interface supports a
 * custom <attributes> element, which supports any number of <attribute>
 * elements. the <attribute> element has attributes named name, value,
 * start and end and allows you to specify PangoAttribute values for this label.
 *
 * $(DDOC_COMMENT example)
 *
 * The start and end attributes specify the range of characters to which the
 * Pango attribute applies. If start and end are not specified, the attribute is
 * applied to the whole text. Note that specifying ranges does not make much
 * sense with translatable attributes. Use markup embedded in the translatable
 * content instead.
 *
 * <hr>
 *
 * Mnemonics
 *
 * Labels may contain mnemonics. Mnemonics are
 * underlined characters in the label, used for keyboard navigation.
 * Mnemonics are created by providing a string with an underscore before
 * the mnemonic character, such as "_File", to the
 * functions gtk_label_new_with_mnemonic() or
 * gtk_label_set_text_with_mnemonic().
 *
 * Mnemonics automatically activate any activatable widget the label is
 * inside, such as a GtkButton; if the label is not inside the
 * mnemonic's target widget, you have to tell the label about the target
 * using gtk_label_set_mnemonic_widget(). Here's a simple example where
 * the label is inside a button:
 *
 * $(DDOC_COMMENT example)
 *
 * There's a convenience function to create buttons with a mnemonic label
 * already inside:
 *
 * $(DDOC_COMMENT example)
 *
 * To create a mnemonic for a widget alongside the label, such as a
 * GtkEntry, you have to point the label at the entry with
 * gtk_label_set_mnemonic_widget():
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Markup (styled text)
 *
 * To make it easy to format text in a label (changing colors, fonts,
 * etc.), label text can be provided in a simple markup format.
 * Here's how to create a label with a small font:
 *
 * $(DDOC_COMMENT example)
 *
 * (See complete documentation of available
 * tags in the Pango manual.)
 *
 * The markup passed to gtk_label_set_markup() must be valid; for example,
 * literal <, > and  characters must be escaped as \<,
 * \gt;, and \. If you pass text obtained from the user, file,
 * or a network to gtk_label_set_markup(), you'll want to escape it with
 * g_markup_escape_text() or g_markup_printf_escaped().
 *
 * Markup strings are just a convenient way to set the PangoAttrList on
 * a label; gtk_label_set_attributes() may be a simpler way to set
 * attributes in some cases. Be careful though; PangoAttrList tends to
 * cause internationalization problems, unless you're applying attributes
 * to the entire string (i.e. unless you set the range of each attribute
 * to [0, G_MAXINT)). The reason is that specifying the start_index and
 * end_index for a PangoAttribute requires knowledge of the exact string
 * being displayed, so translations will cause problems.
 *
 * <hr>
 *
 * Selectable labels
 *
 * Labels can be made selectable with gtk_label_set_selectable().
 * Selectable labels allow the user to copy the label contents to
 * the clipboard. Only labels that contain useful-to-copy information
 * — such as error messages — should be made selectable.
 *
 * <hr>
 *
 * Text layout
 *
 * A label can contain any number of paragraphs, but will have
 * performance problems if it contains more than a small number.
 * Paragraphs are separated by newlines or other paragraph separators
 * understood by Pango.
 *
 * Labels can automatically wrap text if you call
 * gtk_label_set_line_wrap().
 *
 * gtk_label_set_justify() sets how the lines in a label align
 * with one another. If you want to set how the label as a whole
 * aligns in its available space, see gtk_misc_set_alignment().
 *
 * The "width-chars" and "max-width-chars" properties
 * can be used to control the size allocation of ellipsized or wrapped
 * labels. For ellipsizing labels, if either is specified (and less
 * than the actual text size), it is used as the minimum width, and the actual
 * text size is used as the natural width of the label. For wrapping labels,
 * width-chars is used as the minimum width, if specified, and max-width-chars
 * is used as the natural width. Even if max-width-chars specified, wrapping
 * labels will be rewrapped to use all of the available width.
 *
 * Note
 *
 * Note that the interpretation of "width-chars" and
 * "max-width-chars" has changed a bit with the introduction of
 * width-for-height geometry management.
 *
 * <hr>
 *
 * Links
 *
 * Since 2.18, GTK+ supports markup for clickable hyperlinks in addition
 * to regular Pango markup. The markup for links is borrowed from HTML, using the
 * a with href and title attributes. GTK+ renders links similar to the
 * way they appear in web browsers, with colored, underlined text. The title
 * attribute is displayed as a tooltip on the link. An example looks like this:
 *
 * $(DDOC_COMMENT example)
 *
 * It is possible to implement custom handling for links and their tooltips with
 * the "activate-link" signal and the gtk_label_get_current_uri() function.
 */
public class Label : Misc
{
	
	/** the main Gtk struct */
	protected GtkLabel* gtkLabel;
	
	
	public GtkLabel* getLabelStruct()
	{
		return gtkLabel;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLabel;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkLabel* gtkLabel)
	{
		super(cast(GtkMisc*)gtkLabel);
		this.gtkLabel = gtkLabel;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkLabel = cast(GtkLabel*)obj;
	}
	
	/**
	 * Creates a new GtkLabel, containing the text in str.
	 * If characters in str are preceded by an underscore, they are
	 * underlined. If you need a literal underscore character in a label, use
	 * '__' (two underscores). The first underlined character represents a
	 * keyboard accelerator called a mnemonic. The mnemonic key can be used
	 * to activate another widget, chosen automatically, or explicitly using
	 * gtk_label_set_mnemonic_widget().
	 * If gtk_label_set_mnemonic_widget()
	 * is not called, then the first activatable ancestor of the GtkLabel
	 * will be chosen as the mnemonic widget. For instance, if the
	 * label is inside a button or menu item, the button or menu item will
	 * automatically become the mnemonic widget and be activated by
	 * the mnemonic.
	 * Params:
	 *  str = The text of the label, with an underscore in front of the
	 *  mnemonic character
	 *  mnemonic = when false uses the literal text passed in without mnemonic
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string str, bool mnemonic=true)
	{
		GtkLabel* p;
		
		if ( mnemonic )
		{
			// GtkWidget* gtk_label_new_with_mnemonic (const gchar *str);
			p = cast(GtkLabel*)gtk_label_new_with_mnemonic(Str.toStringz(str));
		}
		else
		{
			// GtkWidget* gtk_label_new (const gchar *str);
			p = cast(GtkLabel*)gtk_label_new(Str.toStringz(str));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_label_new");
		}
		
		this(p);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Label)[] onActivateCurrentLinkListeners;
	/**
	 * A keybinding signal
	 * which gets emitted when the user activates a link in the label.
	 * Applications may also emit the signal with g_signal_emit_by_name()
	 * if they need to control activation of URIs programmatically.
	 * The default bindings for this signal are all forms of the Enter key.
	 * Since 2.18
	 */
	void addOnActivateCurrentLink(void delegate(Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate-current-link" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-current-link",
			cast(GCallback)&callBackActivateCurrentLink,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate-current-link"] = 1;
		}
		onActivateCurrentLinkListeners ~= dlg;
	}
	extern(C) static void callBackActivateCurrentLink(GtkLabel* labelStruct, Label _label)
	{
		foreach ( void delegate(Label) dlg ; _label.onActivateCurrentLinkListeners )
		{
			dlg(_label);
		}
	}
	
	bool delegate(string, Label)[] onActivateLinkListeners;
	/**
	 * The signal which gets emitted to activate a URI.
	 * Applications may connect to it to override the default behaviour,
	 * which is to call gtk_show_uri().
	 * TRUE if the link has been activated
	 * Since 2.18
	 */
	void addOnActivateLink(bool delegate(string, Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static gboolean callBackActivateLink(GtkLabel* labelStruct, gchar* uri, Label _label)
	{
		foreach ( bool delegate(string, Label) dlg ; _label.onActivateLinkListeners )
		{
			if ( dlg(Str.toString(uri), _label) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Label)[] onCopyClipboardListeners;
	/**
	 * The ::copy-clipboard signal is a
	 * keybinding signal
	 * which gets emitted to copy the selection to the clipboard.
	 * The default binding for this signal is Ctrl-c.
	 */
	void addOnCopyClipboard(void delegate(Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("copy-clipboard" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"copy-clipboard",
			cast(GCallback)&callBackCopyClipboard,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["copy-clipboard"] = 1;
		}
		onCopyClipboardListeners ~= dlg;
	}
	extern(C) static void callBackCopyClipboard(GtkLabel* labelStruct, Label _label)
	{
		foreach ( void delegate(Label) dlg ; _label.onCopyClipboardListeners )
		{
			dlg(_label);
		}
	}
	
	void delegate(GtkMovementStep, gint, gboolean, Label)[] onMoveCursorListeners;
	/**
	 * The ::move-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates a cursor movement.
	 * If the cursor is not visible in entry, this signal causes
	 * the viewport to be moved instead.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 * The default bindings for this signal come in two variants,
	 * the variant with the Shift modifier extends the selection,
	 * the variant without the Shift modifer does not.
	 * There are too many key combinations to list them all here.
	 * Arrow keys move by individual characters/lines
	 * Ctrl-arrow key combinations move by words/paragraphs
	 * Home/End keys move to the ends of the buffer
	 * TRUE if the move should extend the selection
	 */
	void addOnMoveCursor(void delegate(GtkMovementStep, gint, gboolean, Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-cursor"] = 1;
		}
		onMoveCursorListeners ~= dlg;
	}
	extern(C) static void callBackMoveCursor(GtkLabel* entryStruct, GtkMovementStep step, gint count, gboolean extendSelection, Label _label)
	{
		foreach ( void delegate(GtkMovementStep, gint, gboolean, Label) dlg ; _label.onMoveCursorListeners )
		{
			dlg(step, count, extendSelection, _label);
		}
	}
	
	void delegate(Menu, Label)[] onPopulatePopupListeners;
	/**
	 * The ::populate-popup signal gets emitted before showing the
	 * context menu of the label. Note that only selectable labels
	 * have context menus.
	 * If you need to add items to the context menu, connect
	 * to this signal and append your menuitems to the menu.
	 */
	void addOnPopulatePopup(void delegate(Menu, Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("populate-popup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["populate-popup"] = 1;
		}
		onPopulatePopupListeners ~= dlg;
	}
	extern(C) static void callBackPopulatePopup(GtkLabel* labelStruct, GtkMenu* menu, Label _label)
	{
		foreach ( void delegate(Menu, Label) dlg ; _label.onPopulatePopupListeners )
		{
			dlg(ObjectG.getDObject!(Menu)(menu), _label);
		}
	}
	
	
	/**
	 * Sets the text within the GtkLabel widget. It overwrites any text that
	 * was there before.
	 * This will also clear any previously set mnemonic accelerators.
	 * Params:
	 * str = The text you want to set
	 */
	public void setText(string str)
	{
		// void gtk_label_set_text (GtkLabel *label,  const gchar *str);
		gtk_label_set_text(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * Sets a PangoAttrList; the attributes in the list are applied to the
	 * label text.
	 * Note
	 * The attributes set with this function will be applied
	 * and merged with any other attributes previously effected by way
	 * of the "use-underline" or "use-markup" properties.
	 * While it is not recommended to mix markup strings with manually set
	 * attributes, if you must; know that the attributes will be applied
	 * to the label after the markup string is parsed.
	 * Params:
	 * attrs = a PangoAttrList
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		// void gtk_label_set_attributes (GtkLabel *label,  PangoAttrList *attrs);
		gtk_label_set_attributes(gtkLabel, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}
	
	/**
	 * Parses str which is marked up with the Pango text markup language, setting the
	 * label's text and attribute list based on the parse results. If the str is
	 * external data, you may need to escape it with g_markup_escape_text() or
	 * Params:
	 * str = a markup string (see Pango markup format)
	 */
	public void setMarkup(string str)
	{
		// void gtk_label_set_markup (GtkLabel *label,  const gchar *str);
		gtk_label_set_markup(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * Parses str which is marked up with the
	 * Pango text markup language,
	 * setting the label's text and attribute list based on the parse results.
	 * If characters in str are preceded by an underscore, they are underlined
	 * indicating that they represent a keyboard accelerator called a mnemonic.
	 * The mnemonic key can be used to activate another widget, chosen
	 * automatically, or explicitly using gtk_label_set_mnemonic_widget().
	 * Params:
	 * str = a markup string (see
	 * Pango markup format)
	 */
	public void setMarkupWithMnemonic(string str)
	{
		// void gtk_label_set_markup_with_mnemonic (GtkLabel *label,  const gchar *str);
		gtk_label_set_markup_with_mnemonic(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * The pattern of underlines you want under the existing text within the
	 * GtkLabel widget. For example if the current text of the label says
	 * "FooBarBaz" passing a pattern of "___ ___" will underline
	 * "Foo" and "Baz" but not "Bar".
	 * Params:
	 * pattern = The pattern as described above.
	 */
	public void setPattern(string pattern)
	{
		// void gtk_label_set_pattern (GtkLabel *label,  const gchar *pattern);
		gtk_label_set_pattern(gtkLabel, Str.toStringz(pattern));
	}
	
	/**
	 * Sets the alignment of the lines in the text of the label relative to
	 * each other. GTK_JUSTIFY_LEFT is the default value when the
	 * widget is first created with gtk_label_new(). If you instead want
	 * to set the alignment of the label as a whole, use
	 * gtk_misc_set_alignment() instead. gtk_label_set_justify() has no
	 * effect on labels containing only a single line.
	 * Params:
	 * jtype = a GtkJustification
	 */
	public void setJustify(GtkJustification jtype)
	{
		// void gtk_label_set_justify (GtkLabel *label,  GtkJustification jtype);
		gtk_label_set_justify(gtkLabel, jtype);
	}
	
	/**
	 * Sets the mode used to ellipsize (add an ellipsis: "...") to the text
	 * if there is not enough space to render the entire string.
	 * Since 2.6
	 * Params:
	 * mode = a PangoEllipsizeMode
	 */
	public void setEllipsize(PangoEllipsizeMode mode)
	{
		// void gtk_label_set_ellipsize (GtkLabel *label,  PangoEllipsizeMode mode);
		gtk_label_set_ellipsize(gtkLabel, mode);
	}
	
	/**
	 * Sets the desired width in characters of label to n_chars.
	 * Since 2.6
	 * Params:
	 * nChars = the new desired width, in characters.
	 */
	public void setWidthChars(int nChars)
	{
		// void gtk_label_set_width_chars (GtkLabel *label,  gint n_chars);
		gtk_label_set_width_chars(gtkLabel, nChars);
	}
	
	/**
	 * Sets the desired maximum width in characters of label to n_chars.
	 * Since 2.6
	 * Params:
	 * nChars = the new desired maximum width, in characters.
	 */
	public void setMaxWidthChars(int nChars)
	{
		// void gtk_label_set_max_width_chars (GtkLabel *label,  gint n_chars);
		gtk_label_set_max_width_chars(gtkLabel, nChars);
	}
	
	/**
	 * Toggles line wrapping within the GtkLabel widget. TRUE makes it break
	 * lines if text exceeds the widget's size. FALSE lets the text get cut off
	 * by the edge of the widget if it exceeds the widget size.
	 * Note that setting line wrapping to TRUE does not make the label
	 * wrap at its parent container's width, because GTK+ widgets
	 * conceptually can't make their requisition depend on the parent
	 * container's size. For a label that wraps at a specific position,
	 * set the label's width using gtk_widget_set_size_request().
	 * Params:
	 * wrap = the setting
	 */
	public void setLineWrap(int wrap)
	{
		// void gtk_label_set_line_wrap (GtkLabel *label,  gboolean wrap);
		gtk_label_set_line_wrap(gtkLabel, wrap);
	}
	
	/**
	 * If line wrapping is on (see gtk_label_set_line_wrap()) this controls how
	 * the line wrapping is done. The default is PANGO_WRAP_WORD which means
	 * wrap on word boundaries.
	 * Since 2.10
	 * Params:
	 * wrapMode = the line wrapping mode
	 */
	public void setLineWrapMode(PangoWrapMode wrapMode)
	{
		// void gtk_label_set_line_wrap_mode (GtkLabel *label,  PangoWrapMode wrap_mode);
		gtk_label_set_line_wrap_mode(gtkLabel, wrapMode);
	}
	
	/**
	 * Obtains the coordinates where the label will draw the PangoLayout
	 * representing the text in the label; useful to convert mouse events
	 * into coordinates inside the PangoLayout, e.g. to take some action
	 * if some part of the label is clicked. Of course you will need to
	 * create a GtkEventBox to receive the events, and pack the label
	 * inside it, since labels are a GTK_NO_WINDOW widget. Remember
	 * when using the PangoLayout functions you need to convert to
	 * and from pixels using PANGO_PIXELS() or PANGO_SCALE.
	 * Params:
	 * x = location to store X offset of layout, or NULL. [out][allow-none]
	 * y = location to store Y offset of layout, or NULL. [out][allow-none]
	 */
	public void getLayoutOffsets(out int x, out int y)
	{
		// void gtk_label_get_layout_offsets (GtkLabel *label,  gint *x,  gint *y);
		gtk_label_get_layout_offsets(gtkLabel, &x, &y);
	}
	
	/**
	 * If the label has been set so that it has an mnemonic key this function
	 * returns the keyval used for the mnemonic accelerator. If there is no
	 * mnemonic set up it returns GDK_KEY_VoidSymbol.
	 * Returns: GDK keyval usable for accelerators, or GDK_KEY_VoidSymbol
	 */
	public uint getMnemonicKeyval()
	{
		// guint gtk_label_get_mnemonic_keyval (GtkLabel *label);
		return gtk_label_get_mnemonic_keyval(gtkLabel);
	}
	
	/**
	 * Gets the value set by gtk_label_set_selectable().
	 * Returns: TRUE if the user can copy text from the label
	 */
	public int getSelectable()
	{
		// gboolean gtk_label_get_selectable (GtkLabel *label);
		return gtk_label_get_selectable(gtkLabel);
	}
	
	/**
	 * Fetches the text from a label widget, as displayed on the
	 * screen. This does not include any embedded underlines
	 * indicating mnemonics or Pango markup. (See gtk_label_get_label())
	 * Returns: the text in the label widget. This is the internal string used by the label, and must not be modified.
	 */
	public string getText()
	{
		// const gchar * gtk_label_get_text (GtkLabel *label);
		return Str.toString(gtk_label_get_text(gtkLabel));
	}
	
	/**
	 * Selects a range of characters in the label, if the label is selectable.
	 * See gtk_label_set_selectable(). If the label is not selectable,
	 * this function has no effect. If start_offset or
	 * end_offset are -1, then the end of the label will be substituted.
	 * Params:
	 * startOffset = start offset (in characters not bytes)
	 * endOffset = end offset (in characters not bytes)
	 */
	public void selectRegion(int startOffset, int endOffset)
	{
		// void gtk_label_select_region (GtkLabel *label,  gint start_offset,  gint end_offset);
		gtk_label_select_region(gtkLabel, startOffset, endOffset);
	}
	
	/**
	 * If the label has been set so that it has an mnemonic key (using
	 * i.e. gtk_label_set_markup_with_mnemonic(),
	 * gtk_label_set_text_with_mnemonic(), gtk_label_new_with_mnemonic()
	 * or the "use_underline" property) the label can be associated with a
	 * widget that is the target of the mnemonic. When the label is inside
	 * a widget (like a GtkButton or a GtkNotebook tab) it is
	 * automatically associated with the correct widget, but sometimes
	 * (i.e. when the target is a GtkEntry next to the label) you need to
	 * set it explicitly using this function.
	 * The target widget will be accelerated by emitting the
	 * GtkWidget::mnemonic-activate signal on it. The default handler for
	 * this signal will activate the widget if there are no mnemonic collisions
	 * and toggle focus between the colliding widgets otherwise.
	 * Params:
	 * widget = the target GtkWidget. [allow-none]
	 */
	public void setMnemonicWidget(Widget widget)
	{
		// void gtk_label_set_mnemonic_widget (GtkLabel *label,  GtkWidget *widget);
		gtk_label_set_mnemonic_widget(gtkLabel, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Selectable labels allow the user to select text from the label, for
	 * copy-and-paste.
	 * Params:
	 * setting = TRUE to allow selecting text in the label
	 */
	public void setSelectable(int setting)
	{
		// void gtk_label_set_selectable (GtkLabel *label,  gboolean setting);
		gtk_label_set_selectable(gtkLabel, setting);
	}
	
	/**
	 * Sets the label's text from the string str.
	 * If characters in str are preceded by an underscore, they are underlined
	 * indicating that they represent a keyboard accelerator called a mnemonic.
	 * The mnemonic key can be used to activate another widget, chosen
	 * automatically, or explicitly using gtk_label_set_mnemonic_widget().
	 * Params:
	 * str = a string
	 */
	public void setTextWithMnemonic(string str)
	{
		// void gtk_label_set_text_with_mnemonic (GtkLabel *label,  const gchar *str);
		gtk_label_set_text_with_mnemonic(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * Gets the attribute list that was set on the label using
	 * gtk_label_set_attributes(), if any. This function does
	 * not reflect attributes that come from the labels markup
	 * (see gtk_label_set_markup()). If you want to get the
	 * effective attributes for the label, use
	 * pango_layout_get_attribute (gtk_label_get_layout (label)).
	 * Returns: the attribute list, or NULL if none was set. [transfer none]
	 */
	public PgAttributeList getAttributes()
	{
		// PangoAttrList * gtk_label_get_attributes (GtkLabel *label);
		auto p = gtk_label_get_attributes(gtkLabel);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) p);
	}
	
	/**
	 * Returns the justification of the label. See gtk_label_set_justify().
	 * Returns: GtkJustification
	 */
	public GtkJustification getJustify()
	{
		// GtkJustification gtk_label_get_justify (GtkLabel *label);
		return gtk_label_get_justify(gtkLabel);
	}
	
	/**
	 * Returns the ellipsizing position of the label. See gtk_label_set_ellipsize().
	 * Since 2.6
	 * Returns: PangoEllipsizeMode
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		// PangoEllipsizeMode gtk_label_get_ellipsize (GtkLabel *label);
		return gtk_label_get_ellipsize(gtkLabel);
	}
	
	/**
	 * Retrieves the desired width of label, in characters. See
	 * gtk_label_set_width_chars().
	 * Since 2.6
	 * Returns: the width of the label in characters.
	 */
	public int getWidthChars()
	{
		// gint gtk_label_get_width_chars (GtkLabel *label);
		return gtk_label_get_width_chars(gtkLabel);
	}
	
	/**
	 * Retrieves the desired maximum width of label, in characters. See
	 * gtk_label_set_width_chars().
	 * Since 2.6
	 * Returns: the maximum width of the label in characters.
	 */
	public int getMaxWidthChars()
	{
		// gint gtk_label_get_max_width_chars (GtkLabel *label);
		return gtk_label_get_max_width_chars(gtkLabel);
	}
	
	/**
	 * Fetches the text from a label widget including any embedded
	 * underlines indicating mnemonics and Pango markup. (See
	 * gtk_label_get_text()).
	 * Returns: the text of the label widget. This string is owned by the widget and must not be modified or freed.
	 */
	public string getLabel()
	{
		// const gchar * gtk_label_get_label (GtkLabel *label);
		return Str.toString(gtk_label_get_label(gtkLabel));
	}
	
	/**
	 * Gets the PangoLayout used to display the label.
	 * The layout is useful to e.g. convert text positions to
	 * pixel positions, in combination with gtk_label_get_layout_offsets().
	 * The returned layout is owned by the label so need not be
	 * freed by the caller. The label is free to recreate its layout at
	 * any time, so it should be considered read-only.
	 * Returns: the PangoLayout for this label. [transfer none]
	 */
	public PgLayout getLayout()
	{
		// PangoLayout * gtk_label_get_layout (GtkLabel *label);
		auto p = gtk_label_get_layout(gtkLabel);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Returns whether lines in the label are automatically wrapped.
	 * See gtk_label_set_line_wrap().
	 * Returns: TRUE if the lines of the label are automatically wrapped.
	 */
	public int getLineWrap()
	{
		// gboolean gtk_label_get_line_wrap (GtkLabel *label);
		return gtk_label_get_line_wrap(gtkLabel);
	}
	
	/**
	 * Returns line wrap mode used by the label. See gtk_label_set_line_wrap_mode().
	 * Since 2.10
	 * Returns: TRUE if the lines of the label are automatically wrapped.
	 */
	public PangoWrapMode getLineWrapMode()
	{
		// PangoWrapMode gtk_label_get_line_wrap_mode (GtkLabel *label);
		return gtk_label_get_line_wrap_mode(gtkLabel);
	}
	
	/**
	 * Retrieves the target of the mnemonic (keyboard shortcut) of this
	 * label. See gtk_label_set_mnemonic_widget().
	 * Returns: the target of the label's mnemonic, or NULL if none has been set and the default algorithm will be used. [transfer none]
	 */
	public Widget getMnemonicWidget()
	{
		// GtkWidget * gtk_label_get_mnemonic_widget (GtkLabel *label);
		auto p = gtk_label_get_mnemonic_widget(gtkLabel);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Gets the selected range of characters in the label, returning TRUE
	 * if there's a selection.
	 * Params:
	 * start = return location for start of selection, as a character offset. [out]
	 * end = return location for end of selection, as a character offset. [out]
	 * Returns: TRUE if selection is non-empty
	 */
	public int getSelectionBounds(out int start, out int end)
	{
		// gboolean gtk_label_get_selection_bounds (GtkLabel *label,  gint *start,  gint *end);
		return gtk_label_get_selection_bounds(gtkLabel, &start, &end);
	}
	
	/**
	 * Returns whether the label's text is interpreted as marked up with
	 * the Pango text markup
	 * language. See gtk_label_set_use_markup().
	 * Returns: TRUE if the label's text will be parsed for markup.
	 */
	public int getUseMarkup()
	{
		// gboolean gtk_label_get_use_markup (GtkLabel *label);
		return gtk_label_get_use_markup(gtkLabel);
	}
	
	/**
	 * Returns whether an embedded underline in the label indicates a
	 * mnemonic. See gtk_label_set_use_underline().
	 * Returns: TRUE whether an embedded underline in the label indicates the mnemonic accelerator keys.
	 */
	public int getUseUnderline()
	{
		// gboolean gtk_label_get_use_underline (GtkLabel *label);
		return gtk_label_get_use_underline(gtkLabel);
	}
	
	/**
	 * Returns whether the label is in single line mode.
	 * Since 2.6
	 * Returns: TRUE when the label is in single line mode.
	 */
	public int getSingleLineMode()
	{
		// gboolean gtk_label_get_single_line_mode (GtkLabel *label);
		return gtk_label_get_single_line_mode(gtkLabel);
	}
	
	/**
	 * Gets the angle of rotation for the label. See
	 * gtk_label_set_angle().
	 * Since 2.6
	 * Returns: the angle of rotation for the label
	 */
	public double getAngle()
	{
		// gdouble gtk_label_get_angle (GtkLabel *label);
		return gtk_label_get_angle(gtkLabel);
	}
	
	/**
	 * Sets the text of the label. The label is interpreted as
	 * including embedded underlines and/or Pango markup depending
	 * on the values of the "use-underline"" and
	 * "use-markup" properties.
	 * Params:
	 * str = the new text to set for the label
	 */
	public void setLabel(string str)
	{
		// void gtk_label_set_label (GtkLabel *label,  const gchar *str);
		gtk_label_set_label(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * Sets whether the text of the label contains markup in Pango's text markup
	 * language. See gtk_label_set_markup().
	 * Params:
	 * setting = TRUE if the label's text should be parsed for markup.
	 */
	public void setUseMarkup(int setting)
	{
		// void gtk_label_set_use_markup (GtkLabel *label,  gboolean setting);
		gtk_label_set_use_markup(gtkLabel, setting);
	}
	
	/**
	 * If true, an underline in the text indicates the next character should be
	 * used for the mnemonic accelerator key.
	 * Params:
	 * setting = TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(int setting)
	{
		// void gtk_label_set_use_underline (GtkLabel *label,  gboolean setting);
		gtk_label_set_use_underline(gtkLabel, setting);
	}
	
	/**
	 * Sets whether the label is in single line mode.
	 * Since 2.6
	 * Params:
	 * singleLineMode = TRUE if the label should be in single line mode
	 */
	public void setSingleLineMode(int singleLineMode)
	{
		// void gtk_label_set_single_line_mode (GtkLabel *label,  gboolean single_line_mode);
		gtk_label_set_single_line_mode(gtkLabel, singleLineMode);
	}
	
	/**
	 * Sets the angle of rotation for the label. An angle of 90 reads from
	 * from bottom to top, an angle of 270, from top to bottom. The angle
	 * setting for the label is ignored if the label is selectable,
	 * wrapped, or ellipsized.
	 * Since 2.6
	 * Params:
	 * angle = the angle that the baseline of the label makes with
	 * the horizontal, in degrees, measured counterclockwise
	 */
	public void setAngle(double angle)
	{
		// void gtk_label_set_angle (GtkLabel *label,  gdouble angle);
		gtk_label_set_angle(gtkLabel, angle);
	}
	
	/**
	 * Returns the URI for the currently active link in the label.
	 * The active link is the one under the mouse pointer or, in a
	 * selectable label, the link in which the text cursor is currently
	 * positioned.
	 * This function is intended for use in a "activate-link" handler
	 * or for use in a "query-tooltip" handler.
	 * Since 2.18
	 * Returns: the currently active URI. The string is owned by GTK+ and must not be freed or modified.
	 */
	public string getCurrentUri()
	{
		// const gchar * gtk_label_get_current_uri (GtkLabel *label);
		return Str.toString(gtk_label_get_current_uri(gtkLabel));
	}
	
	/**
	 * Sets whether the label should keep track of clicked
	 * links (and use a different color for them).
	 * Since 2.18
	 * Params:
	 * trackLinks = TRUE to track visited links
	 */
	public void setTrackVisitedLinks(int trackLinks)
	{
		// void gtk_label_set_track_visited_links (GtkLabel *label,  gboolean track_links);
		gtk_label_set_track_visited_links(gtkLabel, trackLinks);
	}
	
	/**
	 * Returns whether the label is currently keeping track
	 * of clicked links.
	 * Since 2.18
	 * Returns: TRUE if clicked links are remembered
	 */
	public int getTrackVisitedLinks()
	{
		// gboolean gtk_label_get_track_visited_links (GtkLabel *label);
		return gtk_label_get_track_visited_links(gtkLabel);
	}
}
