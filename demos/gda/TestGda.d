module gdaDemo.TestGda;

import gdac.gdatypes;
import gda.Gda;
import gda.Client;
import gda.Config;
import gda.Connection;
import gda.Command;
import gda.DataModel;
import gda.DataSourceInfo;
import gda.ProviderInfo;
import gda.Value;
import gda.ErrorGda;
import glib.ListG;

version(Tango)
{
	import tango.io.Stdout;
	import tango.text.Util : substitute;
	import tango.stdc.stdlib : exit;

    void writef( string frm, ... ){
        string frm2 = substitute( frm, "%s", "{}" );
        Stdout( Stdout.layout.convert( _arguments, _argptr, frm2 ))();
    }

    void writefln( string frm, ... ){
        string frm2 = substitute( frm, "%s", "{}" );
        Stdout( Stdout.layout.convert( _arguments, _argptr, frm2 )).newline;
    }
}
else
{
	import std.stdio;
	import std.c.process;
}

void main (string[] args)
{
	Gda.init("TestGDA", "0.1", args);
	save_ds();
	do_stuff();
}   

void save_ds ()
{
	Config.saveDataSource("calvaris", "MySQL", "DATABASE=calvaris", "cosa de calvaris", null, null);
}

void do_stuff ()
{
	list_providers ();
	list_datasources ();

	Client client = new Client();
	Connection connection = client.openConnection("calvaris", null, null, GdaConnectionOptions.READ_ONLY);
	if (!connection) {
		writefln("Connection failed!");
		exit(1);
	}
	if (!connection.isOpen()) {
		writefln("no connection?");
		get_errors(connection);
		exit(1);
	}
	writefln("about to do some queries");
	execute_some_queries (connection);

	//process_accounts(connection);
	client.closeAllConnections();

	//gda_main_quit();
}

void execute_some_queries (Connection  connection)
{
	execute_sql_non_query (connection, "DELETE FROM cliente");
	execute_sql_non_query (connection,
				 "INSERT INTO cliente(cd_cli, dni, nombr, direc, telef) "
				 "VALUES ('1', '1234', 'Xabier',"
				 "'Rua Unha calquera', '123')"
				 "; INSERT INTO cliente(cd_cli, dni, nombr, direc, telef) "
				 "VALUES ('2', '2345', 'Rodriguez',"
				 "'Rua Outra calquera', '234')");
	execute_sql_non_query (connection,
				 "INSERT INTO cliente(cd_cli, dni, nombr, direc, telef) "
				 "VALUES ('1', '1234', 'Xabier',"
				 "'Rua Unha calquera', '123')"
				 "; INSERT INTO cliente(cd_cli, dni, nombr, direc, telef) "
				 "VALUES ('2', '2345', 'Rodriguez',"
				 "'Rua Outra calquera', '234')");
	execute_sql_command (connection, "SELECT * FROM cliente");


	execute_sql_non_query (connection,
				 "DELETE FROM accounts;"
				 "INSERT INTO accounts"
				 "(client_code, account_code, balance)"
				 "VALUES (123, 456, 1000);"
				 "INSERT INTO accounts"
				 "(client_code, account_code, balance)"
				 "VALUES (789, 012, 5000);");

	execute_sql_command (connection, "SELECT * FROM Client");
} 

void list_datasources ()
{
	ListG ds_list = Config.getDataSourceList();

	writef("\n");

	for (int n=0;n<ds_list.length();n++)
	{
		ListG node = ds_list.nth(n);

		DataSourceInfo info = new DataSourceInfo(node);

		writefln("NAME: %s PROVIDER: %s CNC: %s DESC: %s USER: %s PASSWORD: %s\n",
			info.name, info.provider, info.cncString, info.description,
			info.username, info.password);
	}

	//gda_config_free_data_source_list (ds_list);
}

void list_providers ()
{
	ListG prov_list = Config.getProviderList();

	for (int n =0; n < prov_list.length(); n++)
	{
		ListG node = prov_list.nth(n);
		 
		ProviderInfo info = new ProviderInfo(node);

		writefln("ID: %s", info.id);
	}

	//gda_config_free_provider_list (prov_list);
}

int execute_sql_non_query (Connection connection, string buffer) 
{
	writefln("execute_sql_non_query %s", buffer);
	int number;
	auto command = new Command(buffer, GdaCommandType.TYPE_SQL, GdaCommandOptions.STOP_ON_ERRORS);

	number  = connection.executeNonQuery(command, null);

	return number;
} 

bool execute_sql_command (Connection connection, string buffer)
{
	writefln("execute_sql_command %s", buffer); 
	bool errors=false;

	auto command = new Command(buffer, GdaCommandType.TYPE_SQL, GdaCommandOptions.STOP_ON_ERRORS);
	ListG list = connection.executeCommand(command, null);

	if (list is null)
	{
		writefln("no data");
		return true;
	}

	writefln("got %d datamodels", list.length());
	get_errors(connection);
	for (int n=0; n<list.length();n++)
	{
		// one for the wrapper?

		DataModel dm= new DataModel( list.nth(n));

		if (dm is null)
		{
			errors=true;
			continue;
		}
			  
		show_table (dm);
		//g_object_unref(dm);
	}

	//gda_command_free (command);

	return errors;
}

void show_table (DataModel dm)
{
	int row_id;
	int column_id;

	for (column_id = 0; column_id < dm.getNColumns(); column_id++)
	{
		writef("%s\t", dm.getColumnTitle(column_id));
	}
 
	writef("\n");

	for (row_id = 0; row_id < dm.getNRows(); row_id++)
	{
		for (column_id = 0; column_id < dm.getNColumns(); column_id++)
		{
			Value value = dm.getValueAt(column_id, row_id);
			writefln("%s\t", value.stringify());
		}
		writef("\n");
	}
}

bool get_errors (Connection connection) 
{
	ListG list = connection.getErrors();
	bool ret=false;

	for (int n = 0; n<list.length(); n++)
	{
		ListG  node  = list.nth(n);
		
		ErrorGda error = new ErrorGda(node);
			 
		writefln("Error no: %d\tdesc: %s\t source: %s\tsqlstate: %s  ", 
				error.getNumber(),
				error.getDescription(),
				error.getSource(),
				error.getSqlstate());
	}

	ret = true;
         
	return ret;
}
