/**
 * DSQLite
 */
 
module dool.sql.DBMetaTuple;


private import dool.util.MetaTuple;

class DBMetaTuple : MetaTuple
{
	
	private import dool.sql.ResultSet;
	
	private import dool.String;
	
	ResultSet resultSet;
	
	/**
	 * Creates a new MeteTuple initizated from a result set or leaving it emppty
	 */
	this(ResultSet resultSet=null)
	{
		separator = new String(",");
		set(resultSet);
	}


	TupleIF getTuple()
	{
		return new DBTuple(this);
	}
	
	void set(ResultSet resultSet)
	{
		rowCount = -1;
		int numberOfColumns = resultSet.columnCount();
		names.length = numberOfColumns;
		types.length = numberOfColumns;

		for ( int i = 0 ; i<numberOfColumns ; i++ )
		{
			names[i] = resultSet.getColumnName(i);
			types[i] = resultSet.getType(i);
			sizes[i] = 0;
			subSizes[i] = 0;
		}
	}
	
}
