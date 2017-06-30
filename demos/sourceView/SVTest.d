/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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

module sourceView.SVTest;

private import gio.Application : GioApplication = Application;
private import gtk.Application;
private import gtk.ApplicationWindow;

private import gtk.ScrolledWindow;
private import gtk.Widget;

private import glib.Str;

private import gsv.SourceView;
private import gsv.SourceBuffer;
private import gsv.SourceLanguage;
private import gsv.SourceLanguageManager;
private import gsv.SourceBuffer;

private import std.stdio;
private import std.file;

/**
 * Demos for SourceView.
 * TODO on gsv: override methods from TextView, TextBuffer, etc
 */

class HelloWorld : ApplicationWindow
{

	SourceView sourceView;

	this(Application application)
	{
		super(application);
		setTitle("GtkD SourceView");
		setBorderWidth(10);
		add(getSourceView());
		setDefaultSize(640,400);
		showAll();
	}

	private string getDemoText()
	{
		string text;

		try
		{
			text = cast(string)std.file.read("SVTest.d");
		}
		catch ( FileException fe ) { }

		return text;
	}

	private Widget getSourceView()
	{
		sourceView = new SourceView();
		sourceView.setShowLineNumbers(true);

		sourceView.setInsertSpacesInsteadOfTabs(false);
		sourceView.setTabWidth(4);
		sourceView.setHighlightCurrentLine(true);

		SourceBuffer sb = sourceView.getBuffer();
		sb.setText(getDemoText());

		ScrolledWindow scWindow = new ScrolledWindow();
		scWindow.add(sourceView);


		SourceLanguageManager slm = new SourceLanguageManager();
		SourceLanguage dLang = slm.getLanguage("d");

		if ( dLang !is null )
		{
			writefln("Setting language to D");
			sb.setLanguage(dLang);
			sb.setHighlightSyntax(true);
		}

		//sourceView.modifyFont("Courier", 9);
		sourceView.setRightMarginPosition(72);
		sourceView.setShowRightMargin(true);
		sourceView.setAutoIndent(true);


		return scWindow;
	}
}

int main(string[] args)
{
	auto application = new Application("org.gtkd.demo.sourceview", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(delegate (GioApplication app) { new HelloWorld(application); });
	return application.run(args);
}
