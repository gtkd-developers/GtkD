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
 * inFile  = glib-Relations-and-Tuples.html
 * outPack = glib
 * outFile = Relation
 * strct   = GRelation
 * realStrct=
 * ctorStrct=
 * clss    = Relation
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_relation_
 * omit structs:
 * omit prefixes:
 * 	- g_tuples_
 * omit code:
 * 	- g_relation_print
 * omit signals:
 * imports:
 * 	- glib.Tuples
 * structWrap:
 * 	- GTuples* -> Tuples
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Relation;

public  import gtkc.glibtypes;

private import gtkc.glib;


private import glib.Tuples;




/**
 * Description
 * A GRelation is a table of data which can be indexed on any number of fields,
 * rather like simple database tables. A GRelation contains a number of
 * records, called tuples. Each record contains a number of fields.
 * Records are not ordered, so it is not possible to find the record at a
 * particular index.
 * Note that GRelation tables are currently limited to 2 fields.
 * To create a GRelation, use g_relation_new().
 * To specify which fields should be indexed, use g_relation_index().
 * Note that this must be called before any tuples are added to the GRelation.
 * To add records to a GRelation use g_relation_insert().
 * To determine if a given record appears in a GRelation, use
 * g_relation_exists(). Note that fields are compared directly, so pointers
 * must point to the exact same position (i.e. different copies of the same
 * string will not match.)
 * To count the number of records which have a particular value in a given
 * field, use g_relation_count().
 * To get all the records which have a particular value in a given field,
 * use g_relation_select(). To access fields of the resulting records,
 * use g_tuples_index(). To free the resulting records use g_tuples_destroy().
 * To delete all records which have a particular value in a given field,
 * use g_relation_delete().
 * To destroy the GRelation, use g_relation_destroy().
 * To help debug GRelation objects, use g_relation_print().
 */
public class Relation
{
	
	/** the main Gtk struct */
	protected GRelation* gRelation;
	
	
	public GRelation* getRelationStruct()
	{
		return gRelation;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gRelation;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GRelation* gRelation)
	{
		if(gRelation is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gRelation passed to constructor.");
			else return;
		}
		this.gRelation = gRelation;
	}
	
	/**
	 * Outputs information about all records in a GRelation, as well as the indexes.
	 * It is for debugging.
	 */
	version(Tango)
	{
		public void print()
		{
			// void g_relation_print (GRelation *relation);
			g_relation_print(gRelation);
		}
	}
	else
	{
		public override void print()
		{
			// void g_relation_print (GRelation *relation);
			g_relation_print(gRelation);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new GRelation with the given number of fields.
	 * Note that currently the number of fields must be 2.
	 * Params:
	 * fields = the number of fields.
	 */
	public this (int fields)
	{
		// GRelation* g_relation_new (gint fields);
		auto p = g_relation_new(fields);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GRelation*) p);
	}
	
	/**
	 * Creates an index on the given field.
	 * Note that this must be called before any records are added to the GRelation.
	 * Params:
	 * field = the field to index, counting from 0.
	 * hashFunc = a function to produce a hash value from the field data.
	 * keyEqualFunc = a function to compare two values of the given field.
	 */
	public void index(int field, GHashFunc hashFunc, GEqualFunc keyEqualFunc)
	{
		// void g_relation_index (GRelation *relation,  gint field,  GHashFunc hash_func,  GEqualFunc key_equal_func);
		g_relation_index(gRelation, field, hashFunc, keyEqualFunc);
	}
	
	/**
	 * Inserts a record into a GRelation.
	 * Params:
	 * ... = the fields of the record to add. These must match the number of
	 * fields in the GRelation, and of type gpointer or gconstpointer.
	 */
	public void insert(... )
	{
		// void g_relation_insert (GRelation *relation,  ...);
		g_relation_insert(gRelation);
	}
	
	/**
	 * Returns TRUE if a record with the given values exists in a GRelation.
	 * Note that the values are compared directly, so that, for example, two
	 * copies of the same string will not match.
	 * Params:
	 * ... = the fields of the record to compare. The number must match the
	 * number of fields in the GRelation.
	 * Returns:TRUE if a record matches.
	 */
	public int exists(... )
	{
		// gboolean g_relation_exists (GRelation *relation,  ...);
		return g_relation_exists(gRelation);
	}
	
	/**
	 * Returns the number of tuples in a GRelation that have the given value
	 * in the given field.
	 * Params:
	 * key = the value to compare with.
	 * field = the field of each record to match.
	 * Returns:the number of matches.
	 */
	public int count(void* key, int field)
	{
		// gint g_relation_count (GRelation *relation,  gconstpointer key,  gint field);
		return g_relation_count(gRelation, key, field);
	}
	
	/**
	 * Returns all of the tuples which have the given key in the given field.
	 * Use g_tuples_index() to access the returned records.
	 * The returned records should be freed with g_tuples_destroy().
	 * Params:
	 * key = the value to compare with.
	 * field = the field of each record to match.
	 * Returns:the records (tuples) that matched.
	 */
	public Tuples select(void* key, int field)
	{
		// GTuples* g_relation_select (GRelation *relation,  gconstpointer key,  gint field);
		auto p = g_relation_select(gRelation, key, field);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Tuples(cast(GTuples*) p);
	}
	
	/**
	 * Deletes any records from a GRelation that have the given key value in
	 * the given field.
	 * Params:
	 * key = the value to compare with.
	 * field = the field of each record to match.
	 * Returns:the number of records deleted.
	 */
	public int delet(void* key, int field)
	{
		// gint g_relation_delete (GRelation *relation,  gconstpointer key,  gint field);
		return g_relation_delete(gRelation, key, field);
	}
	
	/**
	 * Destroys the GRelation, freeing all memory allocated.
	 * However, it does not free memory allocated for the
	 * tuple data, so you should free that first if appropriate.
	 */
	public void destroy()
	{
		// void g_relation_destroy (GRelation *relation);
		g_relation_destroy(gRelation);
	}
}
