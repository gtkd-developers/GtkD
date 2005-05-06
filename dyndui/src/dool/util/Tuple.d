/**
 * DSQLite
 */
 
module dool.util.Tuple;

private import dool.util.TupleIF;

class Tuple : TupleIF
{
	private import dool.sql.Sql;
	private import dool.util.MetaTupleIF;
	private import dool.util.MetaTuple;

	private import dool.String;
	private import dool.Integer;
	
	protected bit[] nulls;
	protected bit[] bits;
	protected String[] strings;
	protected long[] longs;
	protected double[] doubles;
	protected void*[] voids;
	
	MetaTupleIF header;
	
	this(MetaTupleIF header)
	{
		this.header = header;
		
		nulls.length = header.columnCount();
		bits.length = header.columnCount();
		strings.length = header.columnCount();
		longs.length = header.columnCount();
		doubles.length = header.columnCount();
		voids.length = header.columnCount();

		set(header);
	}

	int columnCount()
	{
		return header.columnCount();
	}
	
	char[] toString()
	{
		return toString(header.getSeparator());
	}
	
	char[] toString(char[] separator)
	{
		return toString(new String(separator));
	}
	
	char[] toString(String separator)
	{
		String str = new String();
		foreach(int i , SQLType type ; header.getTypes())
		{
			if ( i > 0 )
			{
				str ~= separator;
			}
			//printf("Tuple.toString col %d \n", i);
			//printf("Tuple.toString type %d \n", type);
			switch ( type )
			{
				case SQLType.INTEGER:
					str ~= cast(int)longs[i];
					break;
					
				case SQLType.DOUBLE:
					str ~= doubles[i];
					break;
					
				case SQLType.TEXT:
					str ~= strings[i];
					break;
					
				case SQLType.BLOB:
					str ~= "--blob--";
					break;
					
				case SQLType.NULL:
					str ~= "--null--";
					break;
					
				default:
					str ~= "--null--";
					break;
			}
		}
		return str.toString();
	}
	
	void set(MetaTupleIF header)
	{
		for ( int iCol = 0 ; iCol<header.columnCount() ; iCol++ )
		{
			nulls[iCol] = false;
			bits[iCol] = false;
			strings[iCol] = null;
			longs[iCol] = 0;
			doubles[iCol] = 0.0;
			voids[iCol] = null;
			strings[iCol] = new String();
		}
	}
	
	/**
	 * Get a field value as char
	 */
	char getChar(int column)
	{
		if ( column>=0 && column < strings.length && strings[column].length > 0 )
		{
			return strings[column][0];
		}
		return '\0';
	}
	char getChar(char[] column)
	{
		return getChar(header.getColumn(column));
	}
	char getChar(String column)
	{
		return getChar(header.getColumn(column));
	}
	
	/**
	 * Get a field value as String
	 */
	String getString(int column)
	{
		if ( column>=0 && column < strings.length )
		{
			return strings[column];
		}
		return new String();
	}
	String getString (char[] column)
	{
		return getString(header.getColumn(column));
	}
	String getString (String column)
	{
		return getString(header.getColumn(column));
	}
	
	/**
	 * Get a field value as bit
	 */
	bit getBit(int column)
	{
		if ( column<0 && column >= strings.length ) return false;
		if ( header.getType(column) == SQLType.BOOLEAN )
		{
			return bits[column];
		}
		else if ( strings[column].length > 0 )
		{
			return strings[column][0] == '1';
		}
		
		return false;

	}
	bit getBit(char[] column)
	{
		return getBit(header.getColumn(column));
	}
	bit getBit(String column)
	{
		return getBit(header.getColumn(column));
	}
	
	/**
	 * Get a field value as 
	 */
	long getLong(int column)
	{
		if ( column<0 && column >= strings.length ) return 0;
		if ( header.getType(column) == SQLType.INTEGER )
		{
			return longs[column];
		}
		try
		{
			return Integer.toInt(strings[column]);
		}
		catch ( NumberError ne )
		{
		}
		return 0;
		
	}
	long getLong(char[] column)
	{
		return getLong(header.getColumn(column));
	}
	long getLong(String column)
	{
		return getLong(header.getColumn(column));
	}
	
	/**
	 * Get a field value as 
	 */
	int getInt(int column)
	{
		if ( column<0 && column >= strings.length ) return 0;
		if ( header.getType(column) == SQLType.INTEGER )
		{
			return cast(int)longs[column];
		}
		try
		{
			return Integer.toInt(strings[column]);
		}
		catch ( NumberError ne )
		{
		}
		return 0;
		
	}
	int getInt(char[] column)
	{
		return getInt(header.getColumn(column));
	}
	int getInt(String column)
	{
		return getInt(header.getColumn(column));
	}
	
	/**
	 * Get a field value as 
	 */
	double getdouble(int column)
	{
		if ( column<0 && column >= strings.length ) return 0.0;
		if ( header.getType(column) == SQLType.DOUBLE )
		{
			return doubles[column];
		}
		else
		{
		}
		
		return 0;
	}
	double getdouble(char[] column)
	{
		return getdouble(header.getColumn(column));
	}
	double getdouble(String column)
	{
		return getdouble(header.getColumn(column));
	}
	
	/**
	 * Get a field value as blob (void*)
	 */
	void* getBlob(int column)
	{
		if ( column<0 && column >= strings.length ) return null;
		if ( header.getType(column) == SQLType.BLOB )
		{
			return voids[column];
		}
		return cast(void*)(strings[column].toStringz());
	}
	void* getBlob(char[] column)
	{
		return getBlob(header.getColumn(column));
	}
	void* getBlob(String column)
	{
		return getBlob(header.getColumn(column));
	}

	
	/**
	 * Set a field value as char
	 */
	TupleIF set(int column, char c)
	{
		if ( column<0 && column >= strings.length ) return this;
		strings[column] = new String(c);
		return this;
	}
	TupleIF set(char[] column, char value)
	{
		return set(header.getColumn(column), value);
	}
	TupleIF set(String column, char value)
	{
		return set(header.getColumn(column), value);
	}
	
	/**
	 * Set a field value as String
	 */
	TupleIF set(int column, String string)
	{
		if ( column<0 || column >= strings.length ) return this;
		strings[column] = string.dup;
		return this;
	}
	TupleIF set(char[] column, char[] value)
	{
		return set(header.getColumn(column), new String(value));
	}
	TupleIF set(char[] column, String value)
	{
		return set(header.getColumn(column), value);
	}
	TupleIF set(String column, String value)
	{
		return set(header.getColumn(column), value);
	}
	
	/**
	 * Set a field value as bit
	 */
	TupleIF set(int column, bit b)
	{
		if ( column<0 && column >= strings.length ) return this;
		strings[column] = new String(b ? "1" : "0");
		bits[column] = b;
		return this;
	}
	TupleIF set(char[] column, bit value)
	{
		return set(header.getColumn(column), value);
	}
	TupleIF set(String column, bit value)
	{
		return set(header.getColumn(column), value);
	}
	
	/**
	 * Set a field value as 
	 */
	TupleIF set(int column, long value)
	{
		if ( column<0 && column >= strings.length ) return this;
		strings[column] = new String(value);
		longs[column] = value;
		return this;
	}
	TupleIF set(char[] column, long value)
	{
		return set(header.getColumn(column), value);
	}
	TupleIF set(String column, long value)
	{
		return set(header.getColumn(column), value);
	}
	
	TupleIF set(int column, int value)
	{
		if ( column<0 && column >= strings.length ) return this;
		strings[column] = new String(value);
		longs[column] = value;
		return this;
	}
	TupleIF set(char[] column, int value)
	{
		return set(header.getColumn(column), value);
	}
	TupleIF set(String column, int value)
	{
		return set(header.getColumn(column), value);
	}
	
	/**
	 * Set a field value as 
	 */
	TupleIF set(int column, double value)
	{
		if ( column<0 && column >= strings.length ) return this;
		strings[column] = new String(value);
		doubles[column] = value;
		return this;
	}
	TupleIF set(char[] column, double value)
	{
		return set(header.getColumn(column), value);
	}
	TupleIF set(String column, double value)
	{
		return set(header.getColumn(column), value);
	}
	
	/**
	 * Set a field value as blob (void*)
	 */
	TupleIF set(int column, void* blob)
	{
		if ( column<0 && column >= strings.length ) return this;
		if ( header.getType(column) == SQLType.BLOB )
		{
			voids[column] = blob;
		}
		return this;
	}
	TupleIF set(char[] column, void* value)
	{
		return set(header.getColumn(column), value);
	}
	TupleIF set(String column, void* value)
	{
		return set(header.getColumn(column), value);
	}
	
}

