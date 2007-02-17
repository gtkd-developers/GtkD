/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module sourceView.SVTest;

char[] demoText = import("demos/sourceView/SVTest.d");

private import gtk.MainWindow;
private import gtk.GtkD;
private import gtk.ScrolledWindow;
private import gtk.Widget;

private import glib.ListSG;

private import gsv.SourceView;
private import gsv.SourceBuffer;
private import gsv.SourceLanguage;
private import gsv.SourceLanguagesManager;

private import gsvc.gsvtypes;

private import gsv.SourceBuffer;

private import std.stdio;

/**
 * Demos for SourceView.
 * TODO on gsv: override methods from TextView, TextBuffer, etc
 */

class HelloWorld : MainWindow
{

	SourceView sourceView;
	
	this()
	{
		super("GtkD SourceView");
		setBorderWidth(10);
		add(getSourceView());
		setDefaultSize(640,400);
		showAll();
	}
	
	private Widget getSourceView()
	{
		sourceView = new SourceView();
		sourceView.setShowLineNumbers(true);
		
		sourceView.setInsertSpacesInsteadOfTabs(false);
		sourceView.setTabsWidth(4);
		sourceView.setHighlightCurrentLine(true);
		
		SourceBuffer sb = sourceView.getBuffer();
		sb.setText(demoText);
		
		ScrolledWindow scWindow = new ScrolledWindow();
		scWindow.add(sourceView);

		
		SourceLanguagesManager slm = new SourceLanguagesManager();
		ListSG list = new ListSG(slm.getAvailableLanguages());
		
		writefln("%s available languages", list.length());
		
		SourceLanguage dLang;
		
		for(int i=0 ; i<list.length() ; i++ )
		{
			SourceLanguage sl = new SourceLanguage(cast(GtkSourceLanguage*)list.nthData(i));
			char[] name = sl.gtkSourceLanguageGetName();
			if ( "D" == name )
			{
				dLang = sl;
			}
			writefln("\t[%s] %s", i, name);
		}

		
		if ( dLang !is null )
		{
			writefln("Setting language to D");
			sb.setLanguage(dLang);
			sb.setHighlight(true);
		}
		
		return scWindow;
	}
}

private import gtkc.Loader;

void main(char[][] args)
{
	
	Linker.dumpFailedLoads();
	
	Gtk.init(args);
	new HelloWorld();
	Gtk.main();

}
