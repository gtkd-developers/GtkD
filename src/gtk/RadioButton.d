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
 * inFile  = GtkRadioButton.html
 * outPack = gtk
 * outFile = RadioButton
 * strct   = GtkRadioButton
 * realStrct=
 * ctorStrct=
 * clss    = RadioButton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_radio_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_radio_button_new_with_label
 * 	- gtk_radio_button_new_with_mnemonic
 * 	- gtk_radio_button_new_with_label_from_widget
 * 	- gtk_radio_button_new_with_mnemonic_from_widget
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkRadioButton* -> RadioButton
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.RadioButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListSG;



private import gtk.CheckButton;

/**
 * Description
 * A single radio button performs the same basic function as a GtkCheckButton,
 * as its position in the object hierarchy reflects. It is only when multiple
 * radio buttons are grouped together that they become a different user
 * interface component in their own right.
 * Every radio button is a member of some group of radio buttons. When one is
 * selected, all other radio buttons in the same group are deselected. A
 * GtkRadioButton is one way of giving the user a choice from many options.
 * Radio button widgets are created with gtk_radio_button_new(), passing NULL
 * as the argument if this is the first radio button in a group. In subsequent
 * calls, the group you wish to add this button to should be passed as an
 * argument. Optionally, gtk_radio_button_new_with_label() can be used if you
 * want a text label on the radio button.
 * Alternatively, when adding widgets to an existing group of radio buttons,
 * use gtk_radio_button_new_from_widget() with a GtkRadioButton that already
 * has a group assigned to it. The convenience function
 * gtk_radio_button_new_with_label_from_widget() is also provided.
 * To retrieve the group a GtkRadioButton is assigned to, use
 * gtk_radio_button_get_group().
 * To remove a GtkRadioButton from one group and make it part of a new one,
 * use gtk_radio_button_set_group().
 * The group list does not need to be freed, as each GtkRadioButton will remove
 * itself and its list item when it is destroyed.
 * $(DDOC_COMMENT example)
 * When an unselected button in the group is clicked the clicked button
 * receives the "toggled" signal, as does the previously
 * selected button.
 * Inside the "toggled" handler, gtk_toggle_button_get_active()
 * can be used to determine if the button has been selected or deselected.
 */
public class RadioButton : CheckButton
{
	
	/** the main Gtk struct */
	protected GtkRadioButton* gtkRadioButton;
	
	
	public GtkRadioButton* getRadioButtonStruct()
	{
		return gtkRadioButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRadioButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRadioButton* gtkRadioButton)
	{
		super(cast(GtkCheckButton*)gtkRadioButton);
		this.gtkRadioButton = gtkRadioButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkRadioButton = cast(GtkRadioButton*)obj;
	}
	
	/**
	 * Creates a new RadioButton with a text label.
	 * Params:
	 *  group = an existing radio button group.
	 *  label = the text label to display next to the radio button.
	 *  mnemonic = if true the label will be created using
	 *  gtk_label_new_with_mnemonic(), so underscores in label indicate the
	 *  mnemonic for the button.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ListSG group, string label, bool mnemonic=true)
	{
		GtkRadioButton* p;
		
		if ( mnemonic )
		{
			// GtkWidget* gtk_radio_button_new_with_mnemonic  (GSList *group,  const gchar *label);
			p = cast(GtkRadioButton*)gtk_radio_button_new_with_mnemonic(
			group is null ? null : group.getListSGStruct(),
			Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_radio_button_new_with_label (GSList *group,  const gchar *label);
			p = cast(GtkRadioButton*)gtk_radio_button_new_with_label(
			group is null ? null : group.getListSGStruct(),
			Str.toStringz(label));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_button_new_");
		}
		
		this(p);
	}
	
	/**
	 * Creates a new RadioButton with a text label, adding it to the same group
	 * as group.
	 * Params:
	 *  radioButton = an existing RadioButton.
	 *  label = a text string to display next to the radio button.
	 *  mnemonic = if true the label
	 *  will be created using gtk_label_new_with_mnemonic(), so underscores
	 *  in label indicate the mnemonic for the button.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (RadioButton radioButton, string label, bool mnemonic=true)
	{
		GtkRadioButton* p;
		
		if ( mnemonic )
		{
			// GtkWidget* gtk_radio_button_new_with_mnemonic_from_widget  (GtkRadioButton *group,  const gchar *label);
			p = cast(GtkRadioButton*)gtk_radio_button_new_with_mnemonic_from_widget(
			radioButton.getRadioButtonStruct(),
			Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_radio_button_new_with_label_from_widget  (GtkRadioButton *group,  const gchar *label);
			p = cast(GtkRadioButton*)gtk_radio_button_new_with_label_from_widget(
			radioButton.getRadioButtonStruct(),
			Str.toStringz(label));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_button_new_");
		}
		
		this(p);
	}
	
	/**
	 * Creates a new RadioButton with a text label,
	 * and creates a new group.
	 * Params:
	 *  label = a text string to display next to the radio button.
	 *  mnemonic = if true the label
	 *  will be created using gtk_label_new_with_mnemonic(), so underscores
	 *  in label indicate the mnemonic for the button.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, bool mnemonic=true)
	{
		this(cast(ListSG)null, label, mnemonic);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(RadioButton)[] onGroupChangedListeners;
	/**
	 * Emitted when the group of radio buttons that a radio button belongs
	 * to changes. This is emitted when a radio button switches from
	 * being alone to being part of a group of 2 or more buttons, or
	 * vice-versa, and when a button is moved from one group of 2 or
	 * more buttons to a different one, but not when the composition
	 * of the group that a button belongs to changes.
	 * Since 2.4
	 * See Also
	 * GtkComboBox
	 */
	void addOnGroupChanged(void delegate(RadioButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("group-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"group-changed",
			cast(GCallback)&callBackGroupChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["group-changed"] = 1;
		}
		onGroupChangedListeners ~= dlg;
	}
	extern(C) static void callBackGroupChanged(GtkRadioButton* buttonStruct, RadioButton _radioButton)
	{
		foreach ( void delegate(RadioButton) dlg ; _radioButton.onGroupChangedListeners )
		{
			dlg(_radioButton);
		}
	}
	
	
	/**
	 * Creates a new GtkRadioButton. To be of any practical value, a widget should
	 * then be packed into the radio button.
	 * Params:
	 * group = an existing
	 * radio button group, or NULL if you are creating a new group. [element-type GtkRadioButton][allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ListSG group)
	{
		// GtkWidget * gtk_radio_button_new (GSList *group);
		auto p = gtk_radio_button_new((group is null) ? null : group.getListSGStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_button_new((group is null) ? null : group.getListSGStruct())");
		}
		this(cast(GtkRadioButton*) p);
	}
	
	/**
	 * Creates a new GtkRadioButton, adding it to the same group as
	 * radio_group_member. As with gtk_radio_button_new(), a widget
	 * should be packed into the radio button.
	 * Params:
	 * radioGroupMember = an existing GtkRadioButton. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (RadioButton radioGroupMember)
	{
		// GtkWidget * gtk_radio_button_new_from_widget (GtkRadioButton *radio_group_member);
		auto p = gtk_radio_button_new_from_widget((radioGroupMember is null) ? null : radioGroupMember.getRadioButtonStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_button_new_from_widget((radioGroupMember is null) ? null : radioGroupMember.getRadioButtonStruct())");
		}
		this(cast(GtkRadioButton*) p);
	}
	
	/**
	 * Sets a GtkRadioButton's group. It should be noted that this does not change
	 * the layout of your interface in any way, so if you are changing the group,
	 * it is likely you will need to re-arrange the user interface to reflect these
	 * changes.
	 * Params:
	 * group = an existing radio
	 * button group, such as one returned from gtk_radio_button_get_group(). [transfer none][element-type GtkRadioButton]
	 */
	public void setGroup(ListSG group)
	{
		// void gtk_radio_button_set_group (GtkRadioButton *radio_button,  GSList *group);
		gtk_radio_button_set_group(gtkRadioButton, (group is null) ? null : group.getListSGStruct());
	}
	
	/**
	 * Retrieves the group assigned to a radio button.
	 * Returns: a linked list containing all the radio buttons in the same group as radio_button. The returned list is owned by the radio button and must not be modified or freed. [element-type GtkRadioButton][transfer none]
	 */
	public ListSG getGroup()
	{
		// GSList * gtk_radio_button_get_group (GtkRadioButton *radio_button);
		auto p = gtk_radio_button_get_group(gtkRadioButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Joins a GtkRadioButton object to the group of another GtkRadioButton object
	 * Use this in language bindings instead of the gtk_radio_button_get_group()
	 * and gtk_radio_button_set_group() methods
	 * Params:
	 * groupSource = a radio button object whos group we are
	 * joining, or NULL to remove the radio button from its group. [allow-none]
	 * Since 3.0
	 */
	public void joinGroup(RadioButton groupSource)
	{
		// void gtk_radio_button_join_group (GtkRadioButton *radio_button,  GtkRadioButton *group_source);
		gtk_radio_button_join_group(gtkRadioButton, (groupSource is null) ? null : groupSource.getRadioButtonStruct());
	}
}
