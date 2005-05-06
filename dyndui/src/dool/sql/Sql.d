/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */

module dool.sql.Sql;

enum SQLStatus
{
	IDLE,
	BUSY,
	ROW_AVAILABLE,
	ERROR
}


enum SQLType
{
	NONE		= 0,
	BOOLEAN	= 1,
	INTEGER	= 2,
	DOUBLE	= 3,
	CHAR		= 4,
	TEXT		= 5,
	BLOB		= 6,
	NULL		= 7,
}


class SQL
{
	
	private import dool.String;
	
	
	static String getType(int type)
	{
		return getType(cast(SQLType)type);
	}

	static String getType(SQLType type)
	{
		String tp = new String();
		switch (type)
		{
			case SQLType.BOOLEAN: tp.set("BOOLEAN"); break;
			case SQLType.INTEGER: tp.set("INTEGER"); break;
			case SQLType.DOUBLE: tp.set("DOUBLE"); break;
			case SQLType.CHAR: tp.set("CHAR"); break;
			case SQLType.TEXT: tp.set("TEXT"); break;
			case SQLType.BLOB: tp.set("BLOB"); break;
			default:
				tp.set("TEXT");
				break;
		}
		return tp;
	}
}
/*
some sql notes:
- CREATE INDEX indexName ON tableName (columN, columnM)
- CREATE UNIQUE INDEX indexName ON tableName (columN, columnM)
- CREATE TABLE a (a text, b text, PRIMARY KEY (a,b))
*/