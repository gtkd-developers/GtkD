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


module gtk.Constraint;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.ConstraintTargetIF;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkConstraint` describes a constraint between attributes of two widgets,
 * expressed as a linear equation.
 * 
 * The typical equation for a constraint is:
 * 
 * ```
 * target.target_attr = source.source_attr × multiplier + constant
 * ```
 * 
 * Each `GtkConstraint` is part of a system that will be solved by a
 * [class@Gtk.ConstraintLayout] in order to allocate and position each
 * child widget or guide.
 * 
 * The source and target, as well as their attributes, of a `GtkConstraint`
 * instance are immutable after creation.
 */
public class Constraint : ObjectG
{
	/** the main Gtk struct */
	protected GtkConstraint* gtkConstraint;

	/** Get the main Gtk struct */
	public GtkConstraint* getConstraintStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkConstraint;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkConstraint;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkConstraint* gtkConstraint, bool ownedRef = false)
	{
		this.gtkConstraint = gtkConstraint;
		super(cast(GObject*)gtkConstraint, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_constraint_get_type();
	}

	/**
	 * Creates a new constraint representing a relation between a layout
	 * attribute on a source and a layout attribute on a target.
	 *
	 * Params:
	 *     target = the target of the constraint
	 *     targetAttribute = the attribute of `target` to be set
	 *     relation = the relation equivalence between `target_attribute` and `source_attribute`
	 *     source = the source of the constraint
	 *     sourceAttribute = the attribute of `source` to be read
	 *     multiplier = a multiplication factor to be applied to `source_attribute`
	 *     constant = a constant factor to be added to `source_attribute`
	 *     strength = the strength of the constraint
	 *
	 * Returns: the newly created constraint
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ConstraintTargetIF target, GtkConstraintAttribute targetAttribute, GtkConstraintRelation relation, ConstraintTargetIF source, GtkConstraintAttribute sourceAttribute, double multiplier, double constant, int strength)
	{
		auto __p = gtk_constraint_new((target is null) ? null : target.getConstraintTargetStruct(), targetAttribute, relation, (source is null) ? null : source.getConstraintTargetStruct(), sourceAttribute, multiplier, constant, strength);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkConstraint*) __p, true);
	}

	/**
	 * Creates a new constraint representing a relation between a layout
	 * attribute on a target and a constant value.
	 *
	 * Params:
	 *     target = a the target of the constraint
	 *     targetAttribute = the attribute of `target` to be set
	 *     relation = the relation equivalence between `target_attribute` and `constant`
	 *     constant = a constant factor to be set on `target_attribute`
	 *     strength = the strength of the constraint
	 *
	 * Returns: the newly created constraint
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ConstraintTargetIF target, GtkConstraintAttribute targetAttribute, GtkConstraintRelation relation, double constant, int strength)
	{
		auto __p = gtk_constraint_new_constant((target is null) ? null : target.getConstraintTargetStruct(), targetAttribute, relation, constant, strength);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_constant");
		}

		this(cast(GtkConstraint*) __p, true);
	}

	/**
	 * Retrieves the constant factor added to the source attributes' value.
	 *
	 * Returns: a constant factor
	 */
	public double getConstant()
	{
		return gtk_constraint_get_constant(gtkConstraint);
	}

	/**
	 * Retrieves the multiplication factor applied to the source
	 * attribute's value.
	 *
	 * Returns: a multiplication factor
	 */
	public double getMultiplier()
	{
		return gtk_constraint_get_multiplier(gtkConstraint);
	}

	/**
	 * The order relation between the terms of the constraint.
	 *
	 * Returns: a relation type
	 */
	public GtkConstraintRelation getRelation()
	{
		return gtk_constraint_get_relation(gtkConstraint);
	}

	/**
	 * Retrieves the [iface@Gtk.ConstraintTarget] used as the source for the
	 * constraint.
	 *
	 * If the source is set to `NULL` at creation, the constraint will use
	 * the widget using the [class@Gtk.ConstraintLayout] as the source.
	 *
	 * Returns: the source of the constraint
	 */
	public ConstraintTargetIF getSource()
	{
		auto __p = gtk_constraint_get_source(gtkConstraint);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ConstraintTargetIF)(cast(GtkConstraintTarget*) __p);
	}

	/**
	 * Retrieves the attribute of the source to be read by the constraint.
	 *
	 * Returns: the source's attribute
	 */
	public GtkConstraintAttribute getSourceAttribute()
	{
		return gtk_constraint_get_source_attribute(gtkConstraint);
	}

	/**
	 * Retrieves the strength of the constraint.
	 *
	 * Returns: the strength value
	 */
	public int getStrength()
	{
		return gtk_constraint_get_strength(gtkConstraint);
	}

	/**
	 * Retrieves the [iface@Gtk.ConstraintTarget] used as the target for
	 * the constraint.
	 *
	 * If the targe is set to `NULL` at creation, the constraint will use
	 * the widget using the [class@Gtk.ConstraintLayout] as the target.
	 *
	 * Returns: a `GtkConstraintTarget`
	 */
	public ConstraintTargetIF getTarget()
	{
		auto __p = gtk_constraint_get_target(gtkConstraint);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ConstraintTargetIF)(cast(GtkConstraintTarget*) __p);
	}

	/**
	 * Retrieves the attribute of the target to be set by the constraint.
	 *
	 * Returns: the target's attribute
	 */
	public GtkConstraintAttribute getTargetAttribute()
	{
		return gtk_constraint_get_target_attribute(gtkConstraint);
	}

	/**
	 * Checks whether the constraint is attached to a [class@Gtk.ConstraintLayout],
	 * and it is contributing to the layout.
	 *
	 * Returns: `TRUE` if the constraint is attached
	 */
	public bool isAttached()
	{
		return gtk_constraint_is_attached(gtkConstraint) != 0;
	}

	/**
	 * Checks whether the constraint describes a relation between an attribute
	 * on the [property@Gtk.Constraint:target] and a constant value.
	 *
	 * Returns: `TRUE` if the constraint is a constant relation
	 */
	public bool isConstant()
	{
		return gtk_constraint_is_constant(gtkConstraint) != 0;
	}

	/**
	 * Checks whether the constraint is a required relation for solving the
	 * constraint layout.
	 *
	 * Returns: %TRUE if the constraint is required
	 */
	public bool isRequired()
	{
		return gtk_constraint_is_required(gtkConstraint) != 0;
	}
}
