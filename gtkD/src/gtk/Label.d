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
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_label_new
 * 	- gtk_label_new_with_mnemonic
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Label;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.Widget;

/**
 * Description
 * The GtkLabel widget displays a small amount of text. As the name
 * implies, most labels are used to label another widget such as a
 * GtkButton, a GtkMenuItem, or a GtkOptionMenu.
 * Mnemonics
 * Labels may contain mnemonics. Mnemonics are
 * underlined characters in the label, used for keyboard navigation.
 * Mnemonics are created by providing a string with an underscore before
 * the mnemonic character, such as "_File", to the
 * functions gtk_label_new_with_mnemonic() or
 * gtk_label_set_text_with_mnemonic().
 * Mnemonics automatically activate any activatable widget the label is
 * inside, such as a GtkButton; if the label is not inside the
 * mnemonic's target widget, you have to tell the label about the target
 * using gtk_label_set_mnemonic_widget(). Here's a simple example where
 * the label is inside a button:
 *  /+* Pressing Alt+H will activate this button +/
 *  button = gtk_button_new ();
 *  label = gtk_label_new_with_mnemonic ("_Hello");
 *  gtk_container_add (GTK_CONTAINER (button), label);
 * There's a convenience function to create buttons with a mnemonic label
 * already inside:
 *  /+* Pressing Alt+H will activate this button +/
 *  button = gtk_button_new_with_mnemonic ("_Hello");
 * To create a mnemonic for a widget alongside the label, such as a
 * GtkEntry, you have to point the label at the entry with
 * gtk_label_set_mnemonic_widget():
 *  /+* Pressing Alt+H will focus the entry +/
 *  entry = gtk_entry_new ();
 *  label = gtk_label_new_with_mnemonic ("_Hello");
 *  gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
 * <hr>
 * Markup (styled text)
 * To make it easy to format text in a label (changing colors, fonts,
 * etc.), label text can be provided in a simple markup format.
 * Here's how to create a label with a small font:
 *  label = gtk_label_new (NULL);
 *  gtk_label_set_markup (GTK_LABEL (label), "<small>Small text</small>");
 * (See complete documentation of available
 * tags in the Pango manual.)
 * The markup passed to gtk_label_set_markup() must be valid; for example,
 * literal </>/ characters must be escaped as lt;,
 * gt;, and amp;. If you pass text obtained from the user, file,
 * or a network to gtk_label_set_markup(), you'll want to escape it with
 * g_markup_escape_text() or g_markup_printf_escaped().
 * Markup strings are just a convenient way to set the PangoAttrList on
 * a label; gtk_label_set_attributes() may be a simpler way to set
 * attributes in some cases. Be careful though; PangoAttrList tends to
 * cause internationalization problems, unless you're applying attributes
 * to the entire string (i.e. unless you set the range of each attribute
 * to [0, G_MAXINT)). The reason is that specifying the start_index and
 * end_index for a PangoAttribute requires knowledge of the exact string
 * being displayed, so translations will cause problems.
 * <hr>
 * Selectable labels
 * Labels can be made selectable with gtk_label_set_selectable().
 * Selectable labels allow the user to copy the label contents to
 * the clipboard. Only labels that contain useful-to-copy information
 *  such as error messages  should be made selectable.
 * <hr>
 * Text layout
 * A label can contain any number of paragraphs, but will have
 * performance problems if it contains more than a small number.
 * Paragraphs are separated by newlines or other paragraph separators
 * understood by Pango.
 * Labels can automatically wrap text if you call
 * gtk_label_set_line_wrap().
 * gtk_label_set_justify() sets how the lines in a label align
 * with one another. If you want to set how the label as a whole
 * aligns in its available space, see gtk_misc_set_alignment().
 */
private import gtk.Misc;
public class Label : Misc
{
	
	/** the main Gtk struct */
	protected GtkLabel* gtkLabel;
	
	
	public GtkLabel* getLabelStruct()
	{
		return gtkLabel;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	 * str:
	 *  The text of the label, with an underscore in front of the
	 *  mnemonic character
	 * mnemonic: when false uses the literal text passed in without mnemonic
	 * Returns:
	 *  the new GtkLabel
	 */
	public this (char[] str, bit mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_label_new_with_mnemonic (const gchar *str);
			this(cast(GtkLabel*)gtk_label_new_with_mnemonic(Str.toStringz(str)) );
		}
		else
		{
			// GtkWidget* gtk_label_new (const gchar *str);
			this(cast(GtkLabel*)gtk_label_new(Str.toStringz(str)) );
		}
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Label)[] onCopyClipboardListeners;
	void addOnCopyClipboard(void delegate(Label) dlg)
	{
		if ( !("copy-clipboard" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"copy-clipboard",
			cast(GCallback)&callBackCopyClipboard,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["copy-clipboard"] = 1;
		}
		onCopyClipboardListeners ~= dlg;
	}
	extern(C) static void callBackCopyClipboard(GtkLabel* labelStruct, Label label)
	{
		bit consumed = false;
		
		foreach ( void delegate(Label) dlg ; label.onCopyClipboardListeners )
		{
			dlg(label);
		}
		
		return consumed;
	}
	
	void delegate(GtkMovementStep, gint, gboolean, Label)[] onMoveCursorListeners;
	void addOnMoveCursor(void delegate(GtkMovementStep, gint, gboolean, Label) dlg)
	{
		if ( !("move-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["move-cursor"] = 1;
		}
		onMoveCursorListeners ~= dlg;
	}
	extern(C) static void callBackMoveCursor(GtkLabel* labelStruct, GtkMovementStep arg1, gint arg2, gboolean arg3, Label label)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkMovementStep, gint, gboolean, Label) dlg ; label.onMoveCursorListeners )
		{
			dlg(arg1, arg2, arg3, label);
		}
		
		return consumed;
	}
	
	void delegate(GtkMenu*, Label)[] onPopulatePopupListeners;
	void addOnPopulatePopup(void delegate(GtkMenu*, Label) dlg)
	{
		if ( !("populate-popup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["populate-popup"] = 1;
		}
		onPopulatePopupListeners ~= dlg;
	}
	extern(C) static void callBackPopulatePopup(GtkLabel* labelStruct, GtkMenu* arg1, Label label)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkMenu*, Label) dlg ; label.onPopulatePopupListeners )
		{
			dlg(arg1, label);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Sets the text within the GtkLabel widget. It overwrites any text that
	 * was there before.
	 * This will also clear any previously set mnemonic accelerators.
	 * label:
	 *  a GtkLabel
	 * str:
	 *  The text you want to set.
	 */
	public void setText(char[] str)
	{
		// void gtk_label_set_text (GtkLabel *label,  const gchar *str);
		gtk_label_set_text(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * Sets a PangoAttrList; the attributes in the list are applied to the
	 * label text. The attributes set with this function will be ignored
	 * if the "use_underline" property or the "use_markup" property
	 * is TRUE.
	 * label:
	 *  a GtkLabel
	 * attrs:
	 *  a PangoAttrList
	 */
	public void setAttributes(PangoAttrList* attrs)
	{
		// void gtk_label_set_attributes (GtkLabel *label,  PangoAttrList *attrs);
		gtk_label_set_attributes(gtkLabel, attrs);
	}
	
	/**
	 * Parses str which is marked up with the Pango text markup language, setting the
	 * label's text and attribute list based on the parse results. If the str is
	 * external data, you may need to escape it with g_markup_escape_text() or
	 * g_markup_printf_escaped():
	 * char *markup;
	 * markup = g_markup_printf_escaped ("<span style=\"italic\">%s</span>", str);
	 * gtk_label_set_markup (GTK_LABEL (label), markup);
	 * g_free (markup);
	 * label:
	 *  a GtkLabel
	 * str:
	 *  a markup string (see Pango markup format)
	 */
	public void setMarkup(char[] str)
	{
		// void gtk_label_set_markup (GtkLabel *label,  const gchar *str);
		gtk_label_set_markup(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * Parses str which is marked up with the Pango text markup language,
	 * setting the label's text and attribute list based on the parse results.
	 * If characters in str are preceded by an underscore, they are underlined
	 * indicating that they represent a keyboard accelerator called a mnemonic.
	 * The mnemonic key can be used to activate another widget, chosen automatically,
	 * or explicitly using gtk_label_set_mnemonic_widget().
	 * label:
	 *  a GtkLabel
	 * str:
	 *  a markup string (see Pango markup format)
	 */
	public void setMarkupWithMnemonic(char[] str)
	{
		// void gtk_label_set_markup_with_mnemonic  (GtkLabel *label,  const gchar *str);
		gtk_label_set_markup_with_mnemonic(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * The pattern of underlines you want under the existing text within the
	 * GtkLabel widget. For example if the current text of the label says
	 * "FooBarBaz" passing a pattern of "___ ___" will underline
	 * "Foo" and "Baz" but not "Bar".
	 * label:
	 * The GtkLabel you want to set the pattern to.
	 * pattern:
	 * The pattern as described above.
	 */
	public void setPattern(char[] pattern)
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
	 * label:
	 *  a GtkLabel
	 * jtype:
	 *  a GtkJustification
	 */
	public void setJustify(GtkJustification jtype)
	{
		// void gtk_label_set_justify (GtkLabel *label,  GtkJustification jtype);
		gtk_label_set_justify(gtkLabel, jtype);
	}
	
	/**
	 * Sets the mode used to ellipsize (add an ellipsis: "...") to the text if there
	 * is not enough space to render the entire string.
	 * label:
	 *  a GtkLabel
	 * mode:
	 *  a PangoEllipsizeMode
	 * Since 2.6
	 */
	public void setEllipsize(PangoEllipsizeMode mode)
	{
		// void gtk_label_set_ellipsize (GtkLabel *label,  PangoEllipsizeMode mode);
		gtk_label_set_ellipsize(gtkLabel, mode);
	}
	
	/**
	 * Sets the desired width in characters of label to n_chars.
	 * label:
	 *  a GtkLabel
	 * n_chars:
	 *  the new desired width, in characters.
	 * Since 2.6
	 */
	public void setWidthChars(int nChars)
	{
		// void gtk_label_set_width_chars (GtkLabel *label,  gint n_chars);
		gtk_label_set_width_chars(gtkLabel, nChars);
	}
	
	/**
	 * Sets the desired maximum width in characters of label to n_chars.
	 * label:
	 *  a GtkLabel
	 * n_chars:
	 *  the new desired maximum width, in characters.
	 * Since 2.6
	 */
	public void setMaxWidthChars(int nChars)
	{
		// void gtk_label_set_max_width_chars (GtkLabel *label,  gint n_chars);
		gtk_label_set_max_width_chars(gtkLabel, nChars);
	}
	
	/**
	 * Warning
	 * gtk_label_get is deprecated and should not be used in newly-written code.
	 * Gets the current string of text within the GtkLabel and writes it to
	 * the given str argument. It does not make a copy of this string so you
	 * must not write to it.
	 * label:
	 * The GtkLabel widget you want to get the text from.
	 * str:
	 * The reference to the pointer you want to point to the text.
	 */
	public void get(char** str)
	{
		// void gtk_label_get (GtkLabel *label,  gchar **str);
		gtk_label_get(gtkLabel, str);
	}
	
	/**
	 * Warning
	 * gtk_label_parse_uline is deprecated and should not be used in newly-written code.
	 * Parses the given string for underscores and converts the next
	 * character to an underlined character. The last character that
	 * was underlined will have its lower-cased accelerator keyval returned (i.e.
	 * "_File" would return the keyval for "f". This is
	 * probably only used within the Gtk+ library itself for menu items and such.
	 * label:
	 * The GtkLabel you want to affect.
	 * string:
	 * The string you want to parse for underlines.
	 * Returns:
	 * The lowercase keyval of the last character underlined.
	 */
	public uint parseUline(char[] string)
	{
		// guint gtk_label_parse_uline (GtkLabel *label,  const gchar *string);
		return gtk_label_parse_uline(gtkLabel, Str.toStringz(string));
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
	 * label:
	 *  a GtkLabel
	 * wrap:
	 *  the setting
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
	 * label:
	 *  a GtkLabel
	 * wrap_mode:
	 *  the line wrapping mode
	 * Since 2.10
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
	 * label:
	 *  a GtkLabel
	 * x:
	 *  location to store X offset of layout, or NULL
	 * y:
	 *  location to store Y offset of layout, or NULL
	 */
	public void getLayoutOffsets(int* x, int* y)
	{
		// void gtk_label_get_layout_offsets (GtkLabel *label,  gint *x,  gint *y);
		gtk_label_get_layout_offsets(gtkLabel, x, y);
	}
	
	/**
	 * If the label has been set so that it has an mnemonic key this function
	 * returns the keyval used for the mnemonic accelerator. If there is no
	 * mnemonic set up it returns GDK_VoidSymbol.
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  GDK keyval usable for accelerators, or GDK_VoidSymbol
	 */
	public uint getMnemonicKeyval()
	{
		// guint gtk_label_get_mnemonic_keyval (GtkLabel *label);
		return gtk_label_get_mnemonic_keyval(gtkLabel);
	}
	
	/**
	 * Gets the value set by gtk_label_set_selectable().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  TRUE if the user can copy text from the label
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
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  the text in the label widget. This is the internal
	 *  string used by the label, and must not be modified.
	 */
	public char[] getText()
	{
		// const gchar* gtk_label_get_text (GtkLabel *label);
		return Str.toString(gtk_label_get_text(gtkLabel) );
	}
	
	
	/**
	 * Selects a range of characters in the label, if the label is selectable.
	 * See gtk_label_set_selectable(). If the label is not selectable,
	 * this function has no effect. If start_offset or
	 * end_offset are -1, then the end of the label will be substituted.
	 * label:
	 *  a GtkLabel
	 * start_offset:
	 *  start offset (in characters not bytes)
	 * end_offset:
	 *  end offset (in characters not bytes)
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
	 * The target widget will be accelerated by emitting "mnemonic_activate" on it.
	 * The default handler for this signal will activate the widget if there are no
	 * mnemonic collisions and toggle focus between the colliding widgets otherwise.
	 * label:
	 *  a GtkLabel
	 * widget:
	 *  the target GtkWidget
	 */
	public void setMnemonicWidget(Widget widget)
	{
		// void gtk_label_set_mnemonic_widget (GtkLabel *label,  GtkWidget *widget);
		gtk_label_set_mnemonic_widget(gtkLabel, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Selectable labels allow the user to select text from the label, for
	 * copy-and-paste.
	 * label:
	 *  a GtkLabel
	 * setting:
	 *  TRUE to allow selecting text in the label
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
	 * The mnemonic key can be used to activate another widget, chosen automatically,
	 * or explicitly using gtk_label_set_mnemonic_widget().
	 * label:
	 *  a GtkLabel
	 * str:
	 *  a string
	 */
	public void setTextWithMnemonic(char[] str)
	{
		// void gtk_label_set_text_with_mnemonic  (GtkLabel *label,  const gchar *str);
		gtk_label_set_text_with_mnemonic(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * Gets the attribute list that was set on the label using
	 * gtk_label_set_attributes(), if any. This function does
	 * not reflect attributes that come from the labels markup
	 * (see gtk_label_set_markup()). If you want to get the
	 * effective attributes for the label, use
	 * pango_layout_get_attribute (gtk_label_get_layout (label)).
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  the attribute list, or NULL if none was set.
	 */
	public PangoAttrList* getAttributes()
	{
		// PangoAttrList* gtk_label_get_attributes (GtkLabel *label);
		return gtk_label_get_attributes(gtkLabel);
	}
	
	/**
	 * Returns the justification of the label. See gtk_label_set_justify().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  GtkJustification
	 */
	public GtkJustification getJustify()
	{
		// GtkJustification gtk_label_get_justify (GtkLabel *label);
		return gtk_label_get_justify(gtkLabel);
	}
	
	/**
	 * Returns the ellipsizing position of the label. See gtk_label_set_ellipsize().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  PangoEllipsizeMode
	 * Since 2.6
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		// PangoEllipsizeMode gtk_label_get_ellipsize (GtkLabel *label);
		return gtk_label_get_ellipsize(gtkLabel);
	}
	
	/**
	 * Retrieves the desired width of label, in characters. See
	 * gtk_label_set_width_chars().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  the width of the label in characters.
	 * Since 2.6
	 */
	public int getWidthChars()
	{
		// gint gtk_label_get_width_chars (GtkLabel *label);
		return gtk_label_get_width_chars(gtkLabel);
	}
	
	/**
	 * Retrieves the desired maximum width of label, in characters. See
	 * gtk_label_set_width_chars().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  the maximum width of the label in characters.
	 * Since 2.6
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
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  the text of the label widget. This string is
	 *  owned by the widget and must not be modified or freed.
	 */
	public char[] getLabel()
	{
		// const gchar* gtk_label_get_label (GtkLabel *label);
		return Str.toString(gtk_label_get_label(gtkLabel) );
	}
	
	/**
	 * Gets the PangoLayout used to display the label.
	 * The layout is useful to e.g. convert text positions to
	 * pixel positions, in combination with gtk_label_get_layout_offsets().
	 * The returned layout is owned by the label so need not be
	 * freed by the caller.
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  the PangoLayout for this label
	 */
	public PangoLayout* getLayout()
	{
		// PangoLayout* gtk_label_get_layout (GtkLabel *label);
		return gtk_label_get_layout(gtkLabel);
	}
	
	/**
	 * Returns whether lines in the label are automatically wrapped. See gtk_label_set_line_wrap().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  TRUE if the lines of the label are automatically wrapped.
	 */
	public int getLineWrap()
	{
		// gboolean gtk_label_get_line_wrap (GtkLabel *label);
		return gtk_label_get_line_wrap(gtkLabel);
	}
	
	/**
	 * Returns line wrap mode used by the label. See gtk_label_set_line_wrap_mode().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  TRUE if the lines of the label are automatically wrapped.
	 * Since 2.10
	 */
	public PangoWrapMode getLineWrapMode()
	{
		// PangoWrapMode gtk_label_get_line_wrap_mode (GtkLabel *label);
		return gtk_label_get_line_wrap_mode(gtkLabel);
	}
	
	/**
	 * Retrieves the target of the mnemonic (keyboard shortcut) of this
	 * label. See gtk_label_set_mnemonic_widget().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  the target of the label's mnemonic, or NULL if none
	 *  has been set and the default algorithm will be used.
	 */
	public Widget getMnemonicWidget()
	{
		// GtkWidget* gtk_label_get_mnemonic_widget (GtkLabel *label);
		return new Widget( gtk_label_get_mnemonic_widget(gtkLabel) );
	}
	
	/**
	 * Gets the selected range of characters in the label, returning TRUE
	 * if there's a selection.
	 * label:
	 *  a GtkLabel
	 * start:
	 *  return location for start of selection, as a character offset
	 * end:
	 *  return location for end of selection, as a character offset
	 * Returns:
	 *  TRUE if selection is non-empty
	 */
	public int getSelectionBounds(int* start, int* end)
	{
		// gboolean gtk_label_get_selection_bounds (GtkLabel *label,  gint *start,  gint *end);
		return gtk_label_get_selection_bounds(gtkLabel, start, end);
	}
	
	/**
	 * Returns whether the label's text is interpreted as marked up with
	 * the Pango text markup
	 * language. See gtk_label_set_use_markup().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  TRUE if the label's text will be parsed for markup.
	 */
	public int getUseMarkup()
	{
		// gboolean gtk_label_get_use_markup (GtkLabel *label);
		return gtk_label_get_use_markup(gtkLabel);
	}
	
	/**
	 * Returns whether an embedded underline in the label indicates a
	 * mnemonic. See gtk_label_set_use_underline().
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  TRUE whether an embedded underline in the label indicates
	 *  the mnemonic accelerator keys.
	 */
	public int getUseUnderline()
	{
		// gboolean gtk_label_get_use_underline (GtkLabel *label);
		return gtk_label_get_use_underline(gtkLabel);
	}
	
	/**
	 * Returns whether the label is in single line mode.
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  TRUE when the label is in single line mode.
	 * Since 2.6
	 */
	public int getSingleLineMode()
	{
		// gboolean gtk_label_get_single_line_mode (GtkLabel *label);
		return gtk_label_get_single_line_mode(gtkLabel);
	}
	
	/**
	 * Gets the angle of rotation for the label. See
	 * gtk_label_set_angle.
	 * label:
	 *  a GtkLabel
	 * Returns:
	 *  the angle of rotation for the label
	 * Since 2.6
	 */
	public double getAngle()
	{
		// gdouble gtk_label_get_angle (GtkLabel *label);
		return gtk_label_get_angle(gtkLabel);
	}
	
	/**
	 * Sets the text of the label. The label is interpreted as
	 * including embedded underlines and/or Pango markup depending
	 * on the values of label->use_underline and label->use_markup.
	 * label:
	 *  a GtkLabel
	 * str:
	 *  the new text to set for the label
	 */
	public void setLabel(char[] str)
	{
		// void gtk_label_set_label (GtkLabel *label,  const gchar *str);
		gtk_label_set_label(gtkLabel, Str.toStringz(str));
	}
	
	/**
	 * Sets whether the text of the label contains markup in Pango's text markup
	 * language. See gtk_label_set_markup().
	 * label:
	 *  a GtkLabel
	 * setting:
	 *  TRUE if the label's text should be parsed for markup.
	 */
	public void setUseMarkup(int setting)
	{
		// void gtk_label_set_use_markup (GtkLabel *label,  gboolean setting);
		gtk_label_set_use_markup(gtkLabel, setting);
	}
	
	/**
	 * If true, an underline in the text indicates the next character should be
	 * used for the mnemonic accelerator key.
	 * label:
	 *  a GtkLabel
	 * setting:
	 *  TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(int setting)
	{
		// void gtk_label_set_use_underline (GtkLabel *label,  gboolean setting);
		gtk_label_set_use_underline(gtkLabel, setting);
	}
	
	/**
	 * Sets whether the label is in single line mode.
	 * label:
	 *  a GtkLabel
	 * single_line_mode:
	 *  TRUE if the label should be in single line mode
	 * Since 2.6
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
	 * label:
	 *  a GtkLabel
	 * angle:
	 *  the angle that the baseline of the label makes with
	 *  the horizontal, in degrees, measured counterclockwise
	 * Since 2.6
	 * Property Details
	 * The "angle" property
	 *  "angle" gdouble : Read / Write
	 * The angle that the baseline of the label makes with the horizontal,
	 * in degrees, measured counterclockwise. An angle of 90 reads from
	 * from bottom to top, an angle of 270, from top to bottom. Ignored
	 * if the label is selectable, wrapped, or ellipsized.
	 * Allowed values: [0,360]
	 * Default value: 0
	 * Since 2.6
	 */
	public void setAngle(double angle)
	{
		// void gtk_label_set_angle (GtkLabel *label,  gdouble angle);
		gtk_label_set_angle(gtkLabel, angle);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
