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


module atk.ValueIF;

private import atk.Range;
private import atk.c.functions;
public  import atk.c.types;
private import glib.ListSG;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import std.algorithm;


/**
 * #AtkValue should be implemented for components which either display
 * a value from a bounded range, or which allow the user to specify a
 * value from a bounded range, or both. For instance, most sliders and
 * range controls, as well as dials, should have #AtkObject
 * representations which implement #AtkValue on the component's
 * behalf. #AtKValues may be read-only, in which case attempts to
 * alter the value return would fail.
 * 
 * <refsect1 id="current-value-text">
 * <title>On the subject of current value text</title>
 * <para>
 * In addition to providing the current value, implementors can
 * optionally provide an end-user-consumable textual description
 * associated with this value. This description should be included
 * when the numeric value fails to convey the full, on-screen
 * representation seen by users.
 * </para>
 * 
 * <example>
 * <title>Password strength</title>
 * A password strength meter whose value changes as the user types
 * their new password. Red is used for values less than 4.0, yellow
 * for values between 4.0 and 7.0, and green for values greater than
 * 7.0. In this instance, value text should be provided by the
 * implementor. Appropriate value text would be "weak", "acceptable,"
 * and "strong" respectively.
 * </example>
 * 
 * A level bar whose value changes to reflect the battery charge. The
 * color remains the same regardless of the charge and there is no
 * on-screen text reflecting the fullness of the battery. In this
 * case, because the position within the bar is the only indication
 * the user has of the current charge, value text should not be
 * provided by the implementor.
 * 
 * <refsect2 id="implementor-notes">
 * <title>Implementor Notes</title>
 * <para>
 * Implementors should bear in mind that assistive technologies will
 * likely prefer the value text provided over the numeric value when
 * presenting a widget's value. As a result, strings not intended for
 * end users should not be exposed in the value text, and strings
 * which are exposed should be localized. In the case of widgets which
 * display value text on screen, for instance through a separate label
 * in close proximity to the value-displaying widget, it is still
 * expected that implementors will expose the value text using the
 * above API.
 * </para>
 * 
 * <para>
 * #AtkValue should NOT be implemented for widgets whose displayed
 * value is not reflective of a meaningful amount. For instance, a
 * progress pulse indicator whose value alternates between 0.0 and 1.0
 * to indicate that some process is still taking place should not
 * implement #AtkValue because the current value does not reflect
 * progress towards completion.
 * </para>
 * </refsect2>
 * </refsect1>
 * 
 * <refsect1 id="ranges">
 * <title>On the subject of ranges</title>
 * <para>
 * In addition to providing the minimum and maximum values,
 * implementors can optionally provide details about subranges
 * associated with the widget. These details should be provided by the
 * implementor when both of the following are communicated visually to
 * the end user:
 * </para>
 * <itemizedlist>
 * <listitem>The existence of distinct ranges such as "weak",
 * "acceptable", and "strong" indicated by color, bar tick marks,
 * and/or on-screen text.</listitem>
 * <listitem>Where the current value stands within a given subrange,
 * for instance illustrating progression from very "weak" towards
 * nearly "acceptable" through changes in shade and/or position on
 * the bar within the "weak" subrange.</listitem>
 * </itemizedlist>
 * <para>
 * If both of the above do not apply to the widget, it should be
 * sufficient to expose the numeric value, along with the value text
 * if appropriate, to make the widget accessible.
 * </para>
 * 
 * <refsect2 id="ranges-implementor-notes">
 * <title>Implementor Notes</title>
 * <para>
 * If providing subrange details is deemed necessary, all possible
 * values of the widget are expected to fall within one of the
 * subranges defined by the implementor.
 * </para>
 * </refsect2>
 * </refsect1>
 * 
 * <refsect1 id="localization">
 * <title>On the subject of localization of end-user-consumable text
 * values</title>
 * <para>
 * Because value text and subrange descriptors are human-consumable,
 * implementors are expected to provide localized strings which can be
 * directly presented to end users via their assistive technology. In
 * order to simplify this for implementors, implementors can use
 * atk_value_type_get_localized_name() with the following
 * already-localized constants for commonly-needed values can be used:
 * </para>
 * 
 * <itemizedlist>
 * <listitem>ATK_VALUE_VERY_WEAK</listitem>
 * <listitem>ATK_VALUE_WEAK</listitem>
 * <listitem>ATK_VALUE_ACCEPTABLE</listitem>
 * <listitem>ATK_VALUE_STRONG</listitem>
 * <listitem>ATK_VALUE_VERY_STRONG</listitem>
 * <listitem>ATK_VALUE_VERY_LOW</listitem>
 * <listitem>ATK_VALUE_LOW</listitem>
 * <listitem>ATK_VALUE_MEDIUM</listitem>
 * <listitem>ATK_VALUE_HIGH</listitem>
 * <listitem>ATK_VALUE_VERY_HIGH</listitem>
 * <listitem>ATK_VALUE_VERY_BAD</listitem>
 * <listitem>ATK_VALUE_BAD</listitem>
 * <listitem>ATK_VALUE_GOOD</listitem>
 * <listitem>ATK_VALUE_VERY_GOOD</listitem>
 * <listitem>ATK_VALUE_BEST</listitem>
 * <listitem>ATK_VALUE_SUBSUBOPTIMAL</listitem>
 * <listitem>ATK_VALUE_SUBOPTIMAL</listitem>
 * <listitem>ATK_VALUE_OPTIMAL</listitem>
 * </itemizedlist>
 * <para>
 * Proposals for additional constants, along with their use cases,
 * should be submitted to the GNOME Accessibility Team.
 * </para>
 * </refsect1>
 * 
 * <refsect1 id="changes">
 * <title>On the subject of changes</title>
 * <para>
 * Note that if there is a textual description associated with the new
 * numeric value, that description should be included regardless of
 * whether or not it has also changed.
 * </para>
 * </refsect1>
 */
public interface ValueIF{
	/** Get the main Gtk struct */
	public AtkValue* getValueStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return atk_value_get_type();
	}

	/**
	 * Gets the value of this object.
	 *
	 * Deprecated: Since 2.12. Use atk_value_get_value_and_text()
	 * instead.
	 *
	 * Params:
	 *     value = a #GValue representing the current accessible value
	 */
	public void getCurrentValue(out Value value);

	/**
	 * Gets the minimum increment by which the value of this object may be
	 * changed.  If zero, the minimum increment is undefined, which may
	 * mean that it is limited only by the floating point precision of the
	 * platform.
	 *
	 * Returns: the minimum increment by which the value of this
	 *     object may be changed. zero if undefined.
	 *
	 * Since: 2.12
	 */
	public double getIncrement();

	/**
	 * Gets the maximum value of this object.
	 *
	 * Deprecated: Since 2.12. Use atk_value_get_range() instead.
	 *
	 * Params:
	 *     value = a #GValue representing the maximum accessible value
	 */
	public void getMaximumValue(out Value value);

	/**
	 * Gets the minimum increment by which the value of this object may be changed.  If zero,
	 * the minimum increment is undefined, which may mean that it is limited only by the
	 * floating point precision of the platform.
	 *
	 * Deprecated: Since 2.12. Use atk_value_get_increment() instead.
	 *
	 * Params:
	 *     value = a #GValue representing the minimum increment by which the accessible value may be changed
	 *
	 * Since: 1.12
	 */
	public void getMinimumIncrement(out Value value);

	/**
	 * Gets the minimum value of this object.
	 *
	 * Deprecated: Since 2.12. Use atk_value_get_range() instead.
	 *
	 * Params:
	 *     value = a #GValue representing the minimum accessible value
	 */
	public void getMinimumValue(out Value value);

	/**
	 * Gets the range of this object.
	 *
	 * Returns: a newly allocated #AtkRange
	 *     that represents the minimum, maximum and descriptor (if available)
	 *     of @obj. NULL if that range is not defined.
	 *
	 * Since: 2.12
	 */
	public Range getRange();

	/**
	 * Gets the list of subranges defined for this object. See #AtkValue
	 * introduction for examples of subranges and when to expose them.
	 *
	 * Returns: an #GSList of
	 *     #AtkRange which each of the subranges defined for this object. Free
	 *     the returns list with g_slist_free().
	 *
	 * Since: 2.12
	 */
	public ListSG getSubRanges();

	/**
	 * Gets the current value and the human readable text alternative of
	 * @obj. @text is a newly created string, that must be freed by the
	 * caller. Can be NULL if no descriptor is available.
	 *
	 * Params:
	 *     value = address of #gdouble to put the current value of @obj
	 *     text = address of #gchar to put the human
	 *         readable text alternative for @value
	 *
	 * Since: 2.12
	 */
	public void getValueAndText(out double value, out string text);

	/**
	 * Sets the value of this object.
	 *
	 * Deprecated: Since 2.12. Use atk_value_set_value() instead.
	 *
	 * Params:
	 *     value = a #GValue which is the desired new accessible value.
	 *
	 * Returns: %TRUE if new value is successfully set, %FALSE otherwise.
	 */
	public bool setCurrentValue(Value value);

	/**
	 * Sets the value of this object.
	 *
	 * This method is intended to provide a way to change the value of the
	 * object. In any case, it is possible that the value can't be
	 * modified (ie: a read-only component). If the value changes due this
	 * call, it is possible that the text could change, and will trigger
	 * an #AtkValue::value-changed signal emission.
	 *
	 * Note for implementors: the deprecated atk_value_set_current_value()
	 * method returned TRUE or FALSE depending if the value was assigned
	 * or not. In the practice several implementors were not able to
	 * decide it, and returned TRUE in any case. For that reason it is not
	 * required anymore to return if the value was properly assigned or
	 * not.
	 *
	 * Params:
	 *     newValue = a double which is the desired new accessible value.
	 *
	 * Since: 2.12
	 */
	public void setValue(double newValue);

	/**
	 * The 'value-changed' signal is emitted when the current value
	 * that represent the object changes. @value is the numerical
	 * representation of this new value.  @text is the human
	 * readable text alternative of @value, and can be NULL if it is
	 * not available. Note that if there is a textual description
	 * associated with the new numeric value, that description
	 * should be included regardless of whether or not it has also
	 * changed.
	 *
	 * Example: a password meter whose value changes as the user
	 * types their new password. Appropiate value text would be
	 * "weak", "acceptable" and "strong".
	 *
	 * Params:
	 *     value = the new value in a numerical form.
	 *     text = human readable text alternative (also called
	 *         description) of this object. NULL if not available.
	 *
	 * Since: 2.12
	 */
	gulong addOnValueChanged(void delegate(double, string, ValueIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
