/*
 * This file is part of dpq.
 * 
 * dpq is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dpq is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dpq; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module cliDDBC.ConnectDialog;

import dui.All;

public:
interface ConnectHolder
{
	private import dool.sql.Connection;
	
	public Connection getConnect();
	public void setConnect(Connection connect);
}

/**
 * A user window to set the user connection details
 */
public:
class ConnectDialog : Window
{

	version (versionDSQLite)
	{
		private import dool.sql.dsqlite.DSQLite;
	}
	version ( versionDPQ)
	{
		private import dool.sql.dpq.DPQConnect;
	}
	private import dool.sql.Connection;
	private import dool.sql.Statement;
	private import dool.sql.ResultSet;
	
	Entry host;
	Entry port;
	Entry options;
	Entry gtty;
	Entry db;
	Entry login;
	Entry pwd;

	ConnectHolder holder;
	
	this(ConnectHolder holder)
	{
		super("Connect");
		setModal(true);
		this.holder = holder;
		setup();
		show();
	}
	
	void setup()
	{
		VBox box = new VBox(false,2);
		add(box);
		
		// table
		// pghost,  pgport,  pgoptions,  pgtty,  dbName,  login,  pwd

		Table table = new Table(2,7,false);
		
		Connection connect = holder.getConnect();
		
		host = new Entry();
		port = new Entry();
		options = new Entry();
		gtty = new Entry();
		db = new Entry();
		login = new Entry();
		pwd = new Entry();
		pwd.setVisibility(false);

		loadConnect(connect);
		
		table.attach(new Label("Host"),0,1,0,1);
		table.attach(host,1,2,0,1);
		table.attach(new Label("Port"),0,1,1,2);
		table.attach(port,1,2,1,2);
		table.attach(new Label("Options"),0,1,2,3);
		table.attach(options,1,2,2,3);
		table.attach(new Label("gtty"),0,1,3,4);
		table.attach(gtty,1,2,3,4);
		table.attach(new Label("db"),0,1,4,5);
		table.attach(db,1,2,4,5);
		table.attach(new Label("Login"),0,1,5,6);
		table.attach(login,1,2,5,6);
		table.attach(new Label("Pass"),0,1,6,7);
		table.attach(pwd,1,2,6,7);
		
		box.packStart(table,true,true,0);
		box.packStart(new HSeparator(),false,false,0);
		
		ButtonBox bbox = HButtonBox.createActionBox();
		
		Button button = new Button(Stock.APPLY);
		button.addOnClick(&buttonClickedApply);
		bbox.packStartDefaults(button);
		
		button = new Button(Stock.CANCEL);
		button.addOnClick(&buttonClickedCancel);
		bbox.packStartDefaults(button);
		
		box.packStart(bbox,false,false,0);
	}

	/**
	 * Load a connect user values into the user interface
	 */
	public void loadConnect(Connection connect)
	{
		if ( connect.valid() )
		{
			host.setText(connect.host());
			port.setText(connect.port());
			options.setText(connect.options());
			gtty.setText(connect.tty());
			db.setText(connect.dbName());
			login.setText(connect.user());
		}
	}
	
	/**
	 * process user action of apply or cancel
	 * \todo destroy this window, not just hide it
	 */
	public void buttonClickedCancel()
	{
		holder.setConnect(getConnection());
		hide();
	}

	public void buttonClickedApply()
	{
	}

	/**
	 * Creates a new connection from the user values
	 * @return a new connections
	 */
	Connection getConnection()
	{
		
		Connection connect;
		version (versionDSQLite)
		{
			connect= new DSQLite( db.getText() );
		}
		version(versionDPQ)
		{
			connect = new DSQLite(
				host.getText(),
				port.getText(),
				options.getText(),
				gtty.getText(),
				db.getText(),
				login.getText(),
				pwd.getText()
			);
		}

		assert(connect !== null);
		
		return connect;
	}
}
