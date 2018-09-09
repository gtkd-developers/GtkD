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


module gtk.BindingEntry;

private import glib.ListSG;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.BindingSet;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * Each key binding element of a binding sets binding list is
 * represented by a GtkBindingEntry.
 */
public struct BindingEntry
{

	/**
	 * Parses a signal description from @signal_desc and incorporates
	 * it into @binding_set.
	 *
	 * Signal descriptions may either bind a key combination to
	 * one or more signals:
	 * |[
	 * bind "key" {
	 * "signalname" (param, ...)
	 * ...
	 * }
	 * ]|
	 *
	 * Or they may also unbind a key combination:
	 * |[
	 * unbind "key"
	 * ]|
	 *
	 * Key combinations must be in a format that can be parsed by
	 * gtk_accelerator_parse().
	 *
	 * Params:
	 *     bindingSet = a #GtkBindingSet
	 *     signalDesc = a signal description
	 *
	 * Returns: %G_TOKEN_NONE if the signal was successfully parsed and added,
	 *     the expected token otherwise
	 *
	 * Since: 3.0
	 */
	public static GTokenType addSignalFromString(BindingSet bindingSet, string signalDesc)
	{
		return gtk_binding_entry_add_signal_from_string((bindingSet is null) ? null : bindingSet.getBindingSetStruct(), Str.toStringz(signalDesc));
	}

	/**
	 * Override or install a new key binding for @keyval with @modifiers on
	 * @binding_set.
	 *
	 * Params:
	 *     bindingSet = a #GtkBindingSet to add a signal to
	 *     keyval = key value
	 *     modifiers = key modifier
	 *     signalName = signal name to be bound
	 *     bindingArgs = list of #GtkBindingArg signal arguments
	 */
	public static void addSignall(BindingSet bindingSet, uint keyval, GdkModifierType modifiers, string signalName, ListSG bindingArgs)
	{
		gtk_binding_entry_add_signall((bindingSet is null) ? null : bindingSet.getBindingSetStruct(), keyval, modifiers, Str.toStringz(signalName), (bindingArgs is null) ? null : bindingArgs.getListSGStruct());
	}

	/**
	 * Remove a binding previously installed via
	 * gtk_binding_entry_add_signal() on @binding_set.
	 *
	 * Params:
	 *     bindingSet = a #GtkBindingSet to remove an entry of
	 *     keyval = key value of binding to remove
	 *     modifiers = key modifier of binding to remove
	 */
	public static void remove(BindingSet bindingSet, uint keyval, GdkModifierType modifiers)
	{
		gtk_binding_entry_remove((bindingSet is null) ? null : bindingSet.getBindingSetStruct(), keyval, modifiers);
	}

	/**
	 * Install a binding on @binding_set which causes key lookups
	 * to be aborted, to prevent bindings from lower priority sets
	 * to be activated.
	 *
	 * Params:
	 *     bindingSet = a #GtkBindingSet to skip an entry of
	 *     keyval = key value of binding to skip
	 *     modifiers = key modifier of binding to skip
	 *
	 * Since: 2.12
	 */
	public static void skip(BindingSet bindingSet, uint keyval, GdkModifierType modifiers)
	{
		gtk_binding_entry_skip((bindingSet is null) ? null : bindingSet.getBindingSetStruct(), keyval, modifiers);
	}
}
