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

module cliDDBC.SQLView;

import dui.All;

public:

/**
 * SQLView
 */
class SQLView : VBox
, KeyListener
{
	
	private import dool.sql.Connection;
	private import dool.sql.Statement;
	private import dool.sql.ResultSet;
	private import dool.sql.DBMetaTuple;
	private import dool.sql.DBTuple;

	private:
	Connection connect;

	/** the statemnt view buffer */
	StatmentBuffer statmentBuffer;	
	/** Where the user types the sql statment */
	TextView statmentView;
	/** The rows display */
	TreeView resultView;
	/** To display results in plain text or the error messages */
	TextView plainView;
	/** Error message buffer */
	TextBuffer plainBuffer;
	/** The output scrolled window. May contain the resultView or the errorView */
	ScrolledWindow botScroll;

	/** the statement executed */
	String lastStatement;
	
	/** Type of view for the results */
	bit viewAsColumns = true;

	String statmentFontName;
	String plainFontName;
	String columnsFontName;

	public:
	
	this()
	{
		this(null);
	}
	
	this(Connection connect)
	{
		super(false,0);
		lastStatement = new String();
		setConnect(connect);

		statmentFontName = new String();
		plainFontName = new String();
		columnsFontName = new String();

		packStart(getToolbar(),false,false,0);
		ScrolledWindow topScroll = new ScrolledWindow(PolicyType.AUTOMATIC,PolicyType.AUTOMATIC);
		botScroll = new ScrolledWindow(PolicyType.AUTOMATIC,PolicyType.AUTOMATIC);
		statmentView = new TextView();
		statmentBuffer = new StatmentBuffer();
		statmentView.setBuffer(statmentBuffer);
		topScroll.add(statmentView);
		VPaned vPan = new VPaned(topScroll,botScroll);
		vPan.setPosition(150);
		plainView = new TextView();
		botScroll.add(plainView);

		Dispatcher dispatcher = Dispatcher.getDispatcher();
		dispatcher.addKeyListener(this,statmentView);

		setStatmentFont(new String("Sans 13"));
		setPlainFont(new String("Sans 13"));
		
		packStart(vPan,true,true,0);
	}

	void setConnect(Connection connect)
	{
		this.connect = connect;
	}
	
	Widget getToolbar()
	{
		Toolbar toolbar = new Toolbar();
		Button button = new Button(Stock.EXECUTE);
		button.addOnClick(&buttonClickedExecute);
		toolbar.appendWidget(button,"run command","run commect");
		button = new Button(Stock.STOP);
		button.addOnClick(&buttonClickedStop);
		toolbar.appendWidget(button,"abort execution","abort execution");
		
		return toolbar;
		
	}

	void buttonClickedExecute()
	{
		executeSQL();
	}
	
	void buttonClickedStop()
	{
	}
	
	TextBuffer setPlainBuffer(char[] text)
	{
		return setPlainBuffer(new String(text));
	}
	TextBuffer setPlainBuffer(String text)
	{
		plainView = new TextView();
		plainView.modifyFont(plainFontName);
		plainBuffer = plainView.getBuffer();
		botScroll.removeAll();
		botScroll.add(plainView);
		plainBuffer.setText(text);
		
		return plainBuffer;
	}
	
	ListStore setColumnBuffer(GType [] colTypes)
	{
		ListStore store = new ListStore(colTypes);
		resultView = new TreeView();
		resultView.setModel(store);
		resultView.setHeadersClickable(true);
		resultView.setRulesHint(true);
		botScroll.removeAll();
		botScroll.add(resultView);

		return store;
	}
	
	public String getStatementText()
	{
		return statmentView.getBuffer().getText();
	}
	
	public void setStatementText(String text)
	{
		statmentView.getBuffer().setText(text);
	}
	
	public String getSQLstatment()
	{
		String statement = new String();
		TextIter start = new TextIter();
		TextIter end = new TextIter();
		if ( statmentView.getBuffer().getSelectionBounds(start,end) )
		{
			statement = statmentView.getBuffer().getText(start,end, true);
		}
		else
		{
			statement = statmentView.getBuffer().getText();
		}
		lastStatement = statement.dup;
		return statement;
	}

	public String getLastSQLStatment()
	{
		return lastStatement;
	}

	/**
	 * Runs a SQL statement and returns the result.
	 * error messages are printed on the main view
	 */
	public ResultSet runSQLStatment(Connection connect, String sqlStatment)
	{
		ResultSet result = null;
		if ( connect === null )
		{
			setPlainBuffer("No connection available");
			return result;
		}
		else
		{
			Statement exec = connect.getStatement();
			
			// get selected or entire text from the statment butffer
			String statment = getSQLstatment();
			
			result = exec.getResultSet(statment);
			//DPQResult result = exec.execQuery(statmentView.getBuffer().getText());
	
			if ( !result.valid() )
			{
				setPlainBuffer(statmentView.getBuffer().getText() ~ "\n\n" ~ result.errorMessage());
				result.clear();
				result = null;
			}
		}

		return result;
	}
	
	void executeSQL()
	{

		ListStore store;
		TextIter iter = new TextIter();
		TreeIter iterTop;
		
		ResultSet result = runSQLStatment(connect, getSQLstatment());
		if ( result === null )
		{
			return;
		}

		int nFields = result.columnCount();

		// create the store

		GType [] colTypes;
		int [] colNumbers;
		colNumbers.length = nFields;
		int number = 0;
		DBMetaTuple header = result.getMetaTuple();
		foreach( String field; header.getNames())
		{
			colTypes ~= DUIType.STRING;
			colNumbers[number] = number;
			++number;
		}

		if ( viewAsColumns )
		{
			store = setColumnBuffer(colTypes);
		}
		else
		{
			setPlainBuffer("");
			plainBuffer.getIterAtOffset(iter, 0);
		}
		
		// add the columns to the view
			int id = 0;
		foreach( String field; header.getNames())
		{
			if ( viewAsColumns )
			{
				TreeViewColumn column = new TreeViewColumn(field.toString(),new CellRendererText(),"text", id);
				resultView.appendColumn(column);
				column.setResizable(true);
				column.setReorderable(true);
				column.setSortColumnID(id);
				column.setSortIndicator(true);
				++id;
			}
			else
			{
				plainBuffer.insert(iter,field ~ "\t");
			}
		}

		if ( !viewAsColumns )
		{
			plainBuffer.insert(iter,"\n");
		}
		else
		{
			iterTop = store.createIter();
		}

		int nTuples = result.columnCount();
	
		String[] vals;
		vals.length = nFields;
		printf("nTuples %d\n",nTuples);
		DBTuple[] rows = result.getTuples();
		foreach ( int i ,DBTuple tuple; rows )
		{
			for ( int col = 0 ; col<nFields ; col++ )
			{
				if ( viewAsColumns )
				{
					vals[col] = tuple.getString(col);
				}
				else
				{
					plainBuffer.insert(iter,tuple.getString(col) ~ "\t");
				}
				
			}
			if ( !viewAsColumns )
			{
				plainBuffer.insert(iter,"\n");
			}
			else
			{
				store.set(iterTop,colNumbers,vals);
				if ( i< (rows.length-1) )
				{
					store.append(iterTop);
				}
			}
		}
//		for ( int i = 0 ; i < nTuples; i++ )
//		{
//			for ( int j = 0 ; j<nFields ; j++ )
//			{
//				if ( viewAsColumns )
//				{
//					vals[j] = result.getValue(i,j);
//				}
//				else
//				{
//					plainBuffer.insert(iter,result.getValue(i,j) ~ "\t");
//				}
//				
//			}
//			if ( !viewAsColumns )
//			{
//				plainBuffer.insert(iter,"\n");
//			}
//			else
//			{
//				store.set(iterTop,colNumbers,vals);
//				if ( i< (nTuples-1) )
//				{
//					store.append(iterTop);
//				}
//			}
//		}

		result.clear();
	}

	bit keyPressCallback(Widget widget, EventKey event)
	{
		return false;
	}
	
	bit keyReleaseCallback(Widget widget, EventKey event)
	{
		bit processed = false;
		
		switch (event.getKeyVal())
		{
			case 0xFFC2: // todo check what's the mnemonic for F5
				executeSQL();
				processed = true;
				break;
				
			default:
				processed = false;
				break;
		}
		return processed;
	}

	public:
	
	void setViewAsColumns(bit viewAsColumns)
	{
		this.viewAsColumns = viewAsColumns;
	}
	
	bit getViewAsColumns()
	{
		return viewAsColumns;
	}
	
	void setColumnsFont(String columnsFontName)
	{
		this.columnsFontName = columnsFontName;
	}
	
	String getColumnsFont()
	{
		return columnsFontName;
	}
	
	void setPlainFont(String plainFontName)
	{
		this.plainFontName = plainFontName;
	}
	
	String getPlainFont()
	{
		return plainFontName;
	}
	
	void setStatmentFont(String statmentFontName)
	{
		this.statmentFontName = statmentFontName;
		statmentView.modifyFont(statmentFontName);		
	}
	
	String getStatmentFont()
	{
		return statmentFontName;
	}

	class StatmentBuffer : TextBuffer , TextChangedListener
	{
		this()
		{
			super();
			Dispatcher dispatcher = Dispatcher.getDispatcher();
			dispatcher.addTextChangedListener(this,this);
			
		}
		void textChangedCallback(TextBuffer ignoreWeAreIt)
		{
		}
	}
	

}
