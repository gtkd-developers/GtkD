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

/*
 * Conversion parameters:
 * inFile  = libgda-gda-command.html
 * outPack = gda
 * outFile = Command
 * strct   = GdaCommand
 * realStrct=
 * ctorStrct=
 * clss    = Command
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_command_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gda.Transaction
 * structWrap:
 * 	- GdaCommand* -> Command
 * 	- GdaTransaction* -> Transaction
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.Command;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gda.Transaction;




/**
 *  The GdaCommand structure holds data needed to issue a command to the
 *  providers.
 *  Applications usually create a GdaCommand (via gda_command_new), set its
 *  properties (via the gda_command_set_* functions) and pass it over to the
 *  database using the GdaConnection functions.
 *
 *  One interesting thing about GdaCommand's is that they can be reused over
 *  and over. That is, applications don't need to create a command every time
 *  they want to run something on the connected database. Moreover, the ability
 *  to create command strings with placeholders allows the use of parameters to
 *  specify the values for those placeholders. Thus, an application can create a
 *  command of the form:
 *
 *  INSERT INTO employees VALUES (id, name, address, salary)
 *
 *  and reuse the same command over and over, just using different values for the
 *  placeholders.
 *
 *  The value for the placeholders is specified when sending the GdaCommand to a
 *  database connection, which is done via the gda_connection_execute function.
 */
public class Command
{
	
	/** the main Gtk struct */
	protected GdaCommand* gdaCommand;
	
	
	public GdaCommand* getCommandStruct()
	{
		return gdaCommand;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaCommand;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaCommand* gdaCommand)
	{
		this.gdaCommand = gdaCommand;
	}
	
	/**
	 */
	
	/**
	 * Returns:
	 */
	public static GType getType()
	{
		// GType gda_command_get_type (void);
		return gda_command_get_type();
	}
	
	/**
	 * Creates a new GdaCommand from the parameters that should be freed by
	 * calling gda_command_free.
	 * If there are conflicting options, this will set options to
	 * GDA_COMMAND_OPTION_DEFAULT.
	 * Params:
	 * text = the text of the command.
	 * type = a GdaCommandType value.
	 * options = a GdaCommandOptions value.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string text, GdaCommandType type, GdaCommandOptions options)
	{
		// GdaCommand* gda_command_new (const gchar *text,  GdaCommandType type,  GdaCommandOptions options);
		auto p = gda_command_new(Str.toStringz(text), type, options);
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_command_new(Str.toStringz(text), type, options)");
		}
		this(cast(GdaCommand*) p);
	}
	
	/**
	 * Frees the resources allocated by gda_command_new.
	 */
	public void free()
	{
		// void gda_command_free (GdaCommand *cmd);
		gda_command_free(gdaCommand);
	}
	
	/**
	 * Creates a new GdaCommand from an existing one.
	 * Returns: a newly allocated GdaCommand with a copy of the data in cmd.
	 */
	public Command copy()
	{
		// GdaCommand* gda_command_copy (GdaCommand *cmd);
		auto p = gda_command_copy(gdaCommand);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Command)(cast(GdaCommand*) p);
	}
	
	/**
	 * Gets the command text held by cmd.
	 * Returns: the command string of cmd.
	 */
	public string getText()
	{
		// const gchar* gda_command_get_text (GdaCommand *cmd);
		return Str.toString(gda_command_get_text(gdaCommand));
	}
	
	/**
	 * Sets the command text of cmd.
	 * Params:
	 * text = the command text.
	 */
	public void setText(string text)
	{
		// void gda_command_set_text (GdaCommand *cmd,  const gchar *text);
		gda_command_set_text(gdaCommand, Str.toStringz(text));
	}
	
	/**
	 * Gets the command type of cmd.
	 * Returns: the command type of cmd.
	 */
	public GdaCommandType getCommandType()
	{
		// GdaCommandType gda_command_get_command_type (GdaCommand *cmd);
		return gda_command_get_command_type(gdaCommand);
	}
	
	/**
	 * Sets the command type of cmd.
	 * Params:
	 * type = the command type.
	 */
	public void setCommandType(GdaCommandType type)
	{
		// void gda_command_set_command_type (GdaCommand *cmd,  GdaCommandType type);
		gda_command_set_command_type(gdaCommand, type);
	}
	
	/**
	 * Gets the command options of cmd.
	 * Returns: the command options of cmd.
	 */
	public GdaCommandOptions getOptions()
	{
		// GdaCommandOptions gda_command_get_options (GdaCommand *cmd);
		return gda_command_get_options(gdaCommand);
	}
	
	/**
	 * Sets the command options of cmd. If there conflicting options, it will just
	 * leave the value as before.
	 * Params:
	 * options = the command options.
	 */
	public void setOptions(GdaCommandOptions options)
	{
		// void gda_command_set_options (GdaCommand *cmd,  GdaCommandOptions options);
		gda_command_set_options(gdaCommand, options);
	}
	
	/**
	 * Gets the GdaTransaction associated with the given GdaCommand.
	 * Returns: the transaction for the command.
	 */
	public Transaction getTransaction()
	{
		// GdaTransaction* gda_command_get_transaction (GdaCommand *cmd);
		auto p = gda_command_get_transaction(gdaCommand);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Transaction)(cast(GdaTransaction*) p);
	}
	
	/**
	 * Sets the GdaTransaction associated with the given GdaCommand.
	 * Params:
	 * xaction = a GdaTransaction object.
	 */
	public void setTransaction(Transaction xaction)
	{
		// void gda_command_set_transaction (GdaCommand *cmd,  GdaTransaction *xaction);
		gda_command_set_transaction(gdaCommand, (xaction is null) ? null : xaction.getTransactionStruct());
	}
}
