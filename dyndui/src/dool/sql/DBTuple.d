/**
 * DSQLite
 */
 
module dool.sql.DBTuple;

private import dool.util.Tuple;

class DBTuple : Tuple
{
	private import dool.util.MetaTuple;
	private import dool.sql.DBMetaTuple;
	private import dool.sql.ResultSet;

	private import dool.String;
	private import dool.Integer;
	
	this(DBMetaTuple header, ResultSet resultSet=null)
	{
		super(header);
		
		nulls.length = header.columnCount();
		bits.length = header.columnCount();
		strings.length = header.columnCount();
		longs.length = header.columnCount();
		doubles.length = header.columnCount();
		voids.length = header.columnCount();

		set(header, resultSet);
	}
	
	void set(MetaTuple header, ResultSet resultSet=null)
	{
		for ( int iCol = 0 ; iCol<header.columnCount() ; iCol++ )
		{
			nulls[iCol] = false;
			bits[iCol] = false;
			strings[iCol] = null;
			longs[iCol] = 0;
			doubles[iCol] = 0.0;
			voids[iCol] = null;
			if ( resultSet === null )
			{
				strings[iCol] = new String();
			}
			else
			{
				strings[iCol] = resultSet.getString(iCol);
				switch ( header.getType(iCol) )
				{
					case SQLType.INTEGER:
						longs[iCol] = resultSet.getInteger(iCol);
						break;
						
					case SQLType.DOUBLE:
						doubles[iCol] = resultSet.getDouble(iCol);
						break;
						
					case SQLType.TEXT:
						//all types get the string value --- strings[iCol] = resultSet.getString(iCol);
						break;
						
					case SQLType.BLOB:
						// todo need to create our owncopy
						voids[iCol] = resultSet.getBlob(iCol);
						break;
						
					case SQLType.BOOLEAN:
						bits[iCol] = resultSet.getInteger(iCol) != 0;
						break;
						
					case SQLType.NULL:
						nulls[iCol] = true;
						break;
						
					default:
						nulls[iCol] = true;
						break;
				}
			}
		}
	}	
}

