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

module ddi.Value;

private import dui.Utils;
private import def.Types;
private import def.Constants;

public:

private:

extern(C)
{
	GValue * g_value_init(GValue * value, GType g_type);
	void g_value_copy(GValue * src_value, GValue * dest_value);
	GValue * g_value_reset(GValue * value);
	void g_value_unset(GValue * value);
	gboolean g_value_fits_pointer(GValue * value);
	gpointer g_value_peek_pointer(GValue * value);
	gboolean g_value_type_compatible(GType src_type, GType dest_type);
	gboolean g_value_type_transformable(GType src_type, GType dest_type);
	gboolean g_value_transform(GValue * src_value, GValue * dest_value);
	//void (*GValueTransform)(const GValue * src_value, GValue * dest_value);
	//void g_value_register_transform_func (GType src_type, GType dest_type, GValueTransform transform_func);
	gchar * g_strdup_value_contents(GValue * value);
}


/**
 * The Value is basically a variable container that consists of a type identifier
 * and a specific value of that type. The type identifier within a GValue
 * structure always determines the type of the associated value. To create a
 * undefined GValue structure, simply create a zero-filled GValue structure. To
 * initialize the GValue, use the g_value_init() function. A GValue cannot be
 * used until it is initialized. The basic type operations (such as freeing and
 * copying) are determined by the GTypeValueTable associated with the type ID
 * stored in the GValue. Other GValue operations (such as converting values
 * between types) are provided by this interface.
 */
public:
class Value
{
	GValue * gValue;

	private import dool.String;
	//import ddi.Pixbuf;
	
	/**
	 * Creates a new Value from a GValue
	 * 
	 */
	~this()
	{
		if ( gValue !== null )
		{
			 //g_value_unset(gValue);
			 gValue = null;
		}
	}

	this(GValue * gValue)
	{
		this.gValue = gValue;
	}
	
	public:
	
	void dump()
	{
		printf("Value dump :::::::::::::::::::\n");
		printf("@ %X\n",gValue);
		printf("\tType = %d\n",gValue.g_type);

		printf("\tgint		%d\n",gValue.data0.v_int);
		printf("\tguint   	%d\n",cast(uint)gValue.data0.v_uint);
		//printf("\tglong   	%lld\n",gValue.data0.v_long);
		//printf("\tgulong  	%lld\n",gValue.data0.v_ulong);
		//printf("\tgint64  	%d\n",gValue.data0.v_int64);
		//printf("\tguint64 	%d\n",gValue.data0.v_uint64);
		//printf("\tgfloat  	%f\n",gValue.data0.v_float);
		//printf("\tgdouble 	%f\n",gValue.data0.v_double);
		printf("\tpointer %X %d \n",gValue.data0,gValue.data0.v_pointer);
		
		dumpStruct(24,gValue);
		//gValue.data0 = 1;
		//gValue.data1 = 2;
		//dumpStruct(24,gValue);
		
	}


	/**
	 * Creates a new Value
	 */
	this()
	{
		this(new GValue);
	}

	/**
	 * Creates a new Value from a char
	 * @param value
	 */
	this(char value)
	{
		GValue* v = new GValue;
		v.g_type = DUIType.CHAR;
		//v.data0.v_int = value;
		this(v);
	}

	
	/**
	 * Creates a new Value from a
	 * @param value
	 */
//	this(DUIType.UCHAR value)
//	{
//		GValue* v = new GValue;
//		v.data0.g_type = DUIType.;
//		v.data0.v_ = value;
//		this(v);
//	}


	/**
	 * Creates a new Value from a bit
	 * @param value
	 */
	this(bit value)
	{
		GValue* v = new GValue;
		v.g_type = DUIType.BOOLEAN;
		v.data0.v_int = value;
		this(v);
	}
	
	/**
	 * Creates a new Value from an int
	 * @param value
	 */
	this(int value)
	{
		GValue* v = new GValue;
		v.g_type = DUIType.INT;
		v.data0.v_ulong = value;
		this(v);
	}
	
	/**
	 * Creates a new Value from an uint
	 * @param value
	 */
	this(uint value)
	{
		GValue* v = new GValue;
		v.g_type = DUIType.UINT;
		v.data0.v_ulong = value;
		this(v);
	}
	
	/**
	 * Creates a new Value from a long
	 * @param value
	 */
	this(long value)
	{
		GValue* v = new GValue;
		v.g_type = DUIType.LONG;
		v.data0.v_int64 = value;
		this(v);
	}
	
	/**
	 * Creates a new Value from a ulong
	 * @param value
	 */
	this(ulong value)
	{
		GValue* v = new GValue;
		v.g_type = DUIType.ULONG;
		v.data0.v_uint64 = cast(gulong)value;
		this(v);
	}

	/**
	 * Creates a new Value from a long
	 * @param value 
	 */
	//this(long value)
	//{
	//	GValue* v = new GValue;
	//	v.g_type = DUIType.INT64;
	//	v.data0.v_int64 = value;
	//	this(v);
	//}
	
	/**
	 * Creates a new Value from a
	 * @param value
	 */
	//this(ulong value)
	//{
	//	GValue* v = new GValue;
	//	v.g_type = DUIType.;
	//	v.data0.v_uint64 = value;
	//	this(v);
	//}
	
	/**
	 * Creates a new Value from a
	 * @param value
	 */
	//this(DUIType.ENUM value)
	//{
	//	GValue* v = new GValue;
	//	v.g_type = DUIType.;
	//	v.data0.v_ = value;
	//	this(v);
	//}
	
	/**
	 * Creates a new Value from a
	 * @param value
	 */
	//this(DUIType.FLAGS value)
	//{
	//	GValue* v = new GValue;
	//	v.g_type = DUIType.;
	//	v.data0.v_ulong = value;
	//	this(v);
	//}
	
	/**
	 * Creates a new Value from a float
	 * @param value
	 */
	//this(float value)
	//{
	//	GValue* v = new GValue;
	//	v.g_type = DUIType.FLOAT;
	//	v.data0.v_float = value;
	//	this(v);
	//}
	
	/**
	 * Creates a new Value from a double
	 * @param value
	 */
	this(double value)
	{
		GValue* v = new GValue;
		v.g_type = DUIType.DOUBLE;
		//v.data0.v_double = value;
		this(v);
	}


	/**
	 * Creates a new Value from a char[] (string)
	 * @param value
	 */
	this(String value)
	{
		char* p = value.toStringz();
		GValue* v = new GValue;
		v.g_type = DUIType.STRING;
		v.data0.v_pointer = p;
		//v.data[1].v_pointer = p;
		this(v);
	}
	
	/**
	 * Creates a new Value from a pointer
	 * @param value
	 */
	this(void* value)
	{
		//printf("Value.this (void*)\n");
		GValue* v = new GValue;
		v.g_type = DUIType.POINTER;
		v.data0.v_pointer = value;
		this(v);
	}

//	this(Pixbuf pixbuf)
//	{
//		GValue* v = new GValue;
//		//v.g_type = DUIType.PIXBUF;
//		v.g_type = DUIType.POINTER;
//		v.data0.v_pointer = cast(void*)(pixbuf.gdkP());
//		this(v);
//	}

	/**
	 * Creates a new Value from a
	 * @param value
	 */
//	this(DUIType.BOXED value)
//	{
//		ddd;
//		v.g_type = DUIType.;
//		v.data0.v_ = value;
//		this(v);
//	}
//	
	/**
	 * Creates a new Value from a
	 * @param value
	 */
//	this(DUIType.PARAM value)
//	{
//		GValue* v = new GValue;
//		v.g_type = DUIType.;
//		v.data0.v_ = value;
//		this(v);
//	}
//	
	/**
	 * Creates a new Value from a
	 * @param value
	 */
//	this(DUIType.OBJECT value)
//	{
//		GValue* v = new GValue;
//		v.g_type = DUIType.;
//		v.data0.v_ = value;
//		this(v);
//	}
//

	/**
	 * gets the gtk structure
	 */
	GValue * getV()
	{
		return gValue;
	}

	String getString()
	{
		//printf("Value.getString contents = %.*s\n", contents().toString());
		String str;
		switch (gValue.g_type)
		{
			case DUIType.STRING:
				str = String.newz(cast(char*)gValue.data0.v_pointer);
				break;
				
			default:
				str = String.newz(cast(char*)gValue.data0.v_pointer);
				break;
		}
		return str;
	}

	int getInt()
	{
		return gValue.data0.v_int;
	}
	
	//uint getInt()
	//{
	//	return gValue.data0.v_uint;
	//}
	
	long getLong()
	{
		return gValue.data0.v_int64;
	}
	
	//ulong getLong()
	//{
	//	return gValue.data0.v_uint64;
	//}
	
	
	/+
	GValue * g_value_init(GValue * value, GType g_type);
	void g_value_copy(GValue * src_value, GValue * dest_value);
	GValue * g_value_reset(GValue * value);
	// done on ~this() void g_value_unset(GValue * value);
	bit g_value_fits_pointer(GValue * value);
	gpointer g_value_peek_pointer(GValue * value);
	bit g_value_type_compatible(GType src_type, GType dest_type);
	bit g_value_type_transformable(GType src_type, GType dest_type);
	bit g_value_transform(GValue * src_value, GValue * dest_value);
	//void (*GValueTransform)(const GValue * src_value, GValue * dest_value);
	//void g_value_register_transform_func (GType src_type, GType dest_type, GValueTransform transform_func);
	+/

	/**
	 * 
	 * @return 
	 */
	String contents()
	{
		return String.newz(g_strdup_value_contents(getV()));
	}

	
}
