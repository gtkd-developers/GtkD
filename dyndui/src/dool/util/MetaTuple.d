/**
 * DSQLite
 */
 
module dool.util.MetaTuple;


private import dool.util.MetaTupleIF;

class MetaTuple : MetaTupleIF
{
	
	private import dool.sql.all;
	
	private import dool.String;

	private import dool.util.TupleIF;
	private import dool.util.Tuple;

	String[] names;
	SQLType[] types;
	int[] sizes;
	int[] subSizes;

	int rowCount;
	
	String separator;
	
	/**
	 * Creates a new MeteTuple initizated from a result set or leaving it emppty
	 */
	this()
	{
		separator = new String(",");
		set();
	}

	MetaTupleIF addColumn(String name, SQLType type=SQLType.TEXT, int size=0, int subSize=0)
	{
		names ~= name.dup;
		types ~= type;
		sizes ~= size;
		subSizes ~= subSize;
		
		return this;
	}
	
	TupleIF getTuple()
	{
		return new Tuple(this);
	}
	
	int columnCount()
	{
		return names.length;
	}

	protected void set()
	{
		names.length = 0;
		types.length = 0;
		sizes.length = 0;
		subSizes.length = 0;
	}
	
	SQLType getType(int column)
	{
		return types[column];
	}
	
	SQLType[] getTypes()
	{
		return types;
	}
	
	String[] getNames()
	{
		return names;
	}
	
	int getColumn(char[] column)
	{
		return getColumn(new String(column));
	}
	
	int getColumn(String column)
	{
		bit found = false;
		for(int i=0 ; i<names.length ; i++ )
		{
			if ( names[i] == column )
			{
				return i;
			}
		}
		return -1;
	}
	
	char[] toString()
	{
		String str = new String();
		// don't use String.join for future enhancements
		foreach(int i, String name ; names)
		{
			if ( i>0)
			{
				str ~= separator;
			}
			str ~= name;
		}
		
		return str.toString();
	}

	void setSeparator(char[] separator)
	{
		setSeparator(new String(separator));
	}
	void setSeparator(String separator)
	{
		this.separator = separator.dup;
	}
	
	String getSeparator()
	{
		return separator;
	}
	
	
}
