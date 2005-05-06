/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */

module dool.util.CommandLineParser;

/**
 * As I'm unsure how common this will be for now it contains only
 * convertion char[][] into char** and String[]
 */
class CommandLineParser
{
	
	private import std.stdio;
	private import dool.String;
	
	/**
	 * Defines a user option with name, description and value
	 */
	protected class UserOption
	{
		/** the option name when '-' is used */
		String shortName;
		/** the option name when '--' is used */
		String name;
		/** the shot description */
		String description;
		/** A long descriptio */
		String longDescription;
		/** text to generate man automatically */
		String help;
		/** some option need a value */
		bit needsValue;
		/** the value of the option - if not set it will be an empty String */
		String value;
		/** if the option was declared by the user */
		bit on;
		
		
		this(char name, 
			bit needsValue,
			char[] description, 
			char[] longDescription, 
			char[] help)
		{
			this(new String(name), needsValue, new String(description),  new String(longDescription), new String(help));
		}

		this(char[] name, 
			bit needsValue,
			char[] description, 
			char[] longDescription, 
			char[] help)
		{
			this(new String(name), needsValue, new String(description), new String(longDescription), new String(help));
		}

		this(String name, 
			bit needsValue, 
			String description, 
			String longDescription, 
			String help)
		{
			this.name = name.dup;
			this.description = description.dup;
			this.longDescription = longDescription.dup;
			this.help = help.dup;
			this.needsValue = needsValue;
			value = new String();
			on = false;
		}
		
		public UserOption setNeedsValue(bit needsValue)
		{
			this.needsValue = needsValue;
			return this;
		}
		
		public bit getNeedsValue()
		{
			return needsValue;
		}
		
		public UserOption setOn(bit on)
		{
			this.on = on;
			return this;
		}
		
		public bit isOn()
		{
			return on;
		}
		public UserOption setValue(String value)
		{
			this.value = value.dup;
			return this;
		}
		
		public String getValue()
		{
			return value;
		}
		
	}
	
	/**
	 * The command line name value pairs
	 */
	UserOption[String] userOptions;
	/** unrecognized options willend up here */
	String[] invalidUserOptions;
	
	/**
	 * The command line unnamed values
	 */
	String[] values;
	
	enum OperationMode
	{
		EXECUTE,
		VERSION,
		ERROR,
	}

	
	this()
	{
	}
	
	OperationMode operationMode= OperationMode.EXECUTE;
	
	bit isOn(char userOption)
	{
		return isOn(new String(userOption));
	}
	
	bit isOn(char[] userOption)
	{
		return isOn(new String(userOption));
	}

	bit isOn(String userOption)
	{
		UserOption* uo = userOption in userOptions;
		if ( uo )
		{
			return uo.isOn();
		}
		return false;
	}

	String value(char userOption)
	{
		return value(new String(userOption));
	}
	
	String value(char[] userOption)
	{
		return value(new String(userOption));
	}
	
	String value(String userOption)
	{
		UserOption* uo = userOption in userOptions;
		if ( uo )
		{
			return uo.getValue();
		}
		return new String();
	}
	
	/**
	 * Processes the entire command line arguments
	 * @return true if ok
	 */
	protected bit setupArgs(String[] args)
	{
		OperationMode oper = OperationMode.EXECUTE;
		if ( args.length > 1 )
		{
			int argPos = 1;
			while ( argPos < args.length )
			{
				if ( args[argPos].startsWith("--") )
				{
					setupLongOptions(args, argPos);
				}
				else if ( args[argPos].startsWith('-') )
				{
					setupOptions(args, argPos);
				}
				else
				{
					values ~= args[argPos].dup;
					++argPos;
				}
			}
		}
		return oper == OperationMode.EXECUTE;
	}
	
	/**
	 * The long options are preceded by '--' on linux and the
	 * value is separated with '='.
	 * \TODO
	 * @return The OperationMode
	 */
	protected bit setupLongOptions(String[] args, inout int argPos)
	{
		OperationMode oper = OperationMode.EXECUTE;
		++argPos;
		return oper == OperationMode.EXECUTE;
	}
	
	/**
	 * The one letter options.
	 * These can be grouped and are preceded by one '-' in linux
	 * or one '/' in windows.
	 * @return the operation mode
	 */
	protected bit setupOptions(String[] args, inout int argPos)
	{
		OperationMode oper = OperationMode.EXECUTE;
		int i = 1;
		int end = args[argPos].length;
		while ( i<end )
		{
			char c = args[argPos][i];
			UserOption* userOption = new String(c) in userOptions;
			if ( userOption )
			{
				userOption.setOn(true);
				if ( userOption.needsValue )
				{
					userOption.setValue(new String(args[argPos][1+i..end]));
					i = end;
				}
			}
			else
			{
				oper = OperationMode.ERROR;
				invalidUserOptions ~= new String(c);
			}
			++i;
		}
		++argPos;
		return oper == OperationMode.EXECUTE;
	}

	
	/**
	 * get the C version of command line in the format char**
	 */
	static char** getCommandLine(char[][] args)
	{		
		// Walter version from a post on the D news group
		char** argv = new char*[args.length];
		int i = 0;
		foreach (char[] p; args)
		{
			argv[i++] = cast(char*)p;
		}
		return argv;
	}
	
	/**
	 * gets the dool version of he command line in the format String[]
	 */
	static String[] getDoolCommandLine(char[][] args)
	{
		String[] strings;
		strings.length = args.length;
		foreach ( int i, char[] arg ; args)
		{
			strings[i] = (new String(arg)).dup;
		}
		return strings;
	}
}
