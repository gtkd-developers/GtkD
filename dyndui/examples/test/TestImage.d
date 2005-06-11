/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module test.TestImage;

private import dui.VBox;
	
private import dui.Table;
private import dui.FileSelection;
private import dui.Button;
private import dui.Widget;
private import dui.ScrolledWindow;
private import dui.HButtonBox;
private import dui.Image;
private import def.Constants;

private import event.Event;
private import dool.String;	

/**
 * This tests the DUI loading and display and image file
 */
class TestImage : VBox
{
	Table table;
	FileSelection fs;

	this()
	{
		debug(1)
		{
			printf("instantiating TestImage\n");
		}

		super(false,8);
		
		ScrolledWindow sw = new ScrolledWindow(null,null);
		
		sw.addWithViewport(initTable());

		HButtonBox hBox = HButtonBox.createActionBox();
		Button loadDir = new Button("Load Files", &loadImages);
		hBox.packStart(loadDir,false,false,0);

		packStart(sw,true,true,0);
		packStart(hBox,false,false,0);

	}
	
	Table initTable()
	{

		// I don't think D can read the content of a directory yet
		// so here it is
		String[] pngs;
		
		pngs ~= new String("gnome-about-logo.png");
		pngs ~= new String("gnome-aisleriot.png");
		pngs ~= new String("gnome-amusements.png");
		pngs ~= new String("gnome-aorta.png");
		pngs ~= new String("gnome-applets.png");
		pngs ~= new String("gnome-application-vnd.lotus-1-2-3.png");
		pngs ~= new String("gnome-application-x-applix-spreadsheet.png");
		pngs ~= new String("gnome-application-x-generic-spreadsheet.png");
		pngs ~= new String("gnome-application-x-gnumeric.png");
		pngs ~= new String("gnome-application-x-xls.png");
		pngs ~= new String("gnome-applications.png");
		pngs ~= new String("gnome-audio2.png");
		pngs ~= new String("gnome-background.png");
		pngs ~= new String("gnome-calc2.png");
		pngs ~= new String("gnome-calc3.png");
		pngs ~= new String("gnome-calendar-conduit.png");
		pngs ~= new String("gnome-calendar.png");
		pngs ~= new String("gnome-cardgame.png");
		pngs ~= new String("gnome-ccbackground.png");
		pngs ~= new String("gnome-ccdesktop.png");
		pngs ~= new String("gnome-ccdialog.png");
		pngs ~= new String("gnome-cckeyboard-bell.png");
		pngs ~= new String("gnome-cckeyboard.png");
		pngs ~= new String("gnome-ccmime.png");
		pngs ~= new String("gnome-ccperiph.png");
		pngs ~= new String("gnome-ccscreensaver.png");
		pngs ~= new String("gnome-ccthemes.png");
		pngs ~= new String("gnome-ccwindowmanager.png");
		pngs ~= new String("gnome-cd.png");
		pngs ~= new String("gnome-cdplayer-icon.png");
		pngs ~= new String("gnome-character-map.png");
		pngs ~= new String("gnome-clock.png");
		pngs ~= new String("gnome-color-browser.png");
		pngs ~= new String("gnome-color-xterm.png");
		pngs ~= new String("gnome-computer.png");
		pngs ~= new String("gnome-cpu.png");
		pngs ~= new String("gnome-cromagnon.png");
		pngs ~= new String("gnome-day.png");
		pngs ~= new String("gnome-debian.png");
		pngs ~= new String("gnome-default-dlg.png");
		pngs ~= new String("gnome-devel.png");
		pngs ~= new String("gnome-die1.png");
		pngs ~= new String("gnome-die2.png");
		pngs ~= new String("gnome-die3.png");
		pngs ~= new String("gnome-die4.png");
		pngs ~= new String("gnome-die5.png");
		pngs ~= new String("gnome-die6.png");
		pngs ~= new String("gnome-diskfree.png");
		pngs ~= new String("gnome-emacs.png");
		pngs ~= new String("gnome-eog.png");
		pngs ~= new String("gnome-error.png");
		pngs ~= new String("gnome-eterm.png");
		pngs ~= new String("gnome-eyes.png");
		pngs ~= new String("gnome-favorites.png");
		pngs ~= new String("gnome-file-c.png");
		pngs ~= new String("gnome-file-h.png");
		pngs ~= new String("gnome-fish.png");
		pngs ~= new String("gnome-folder.png");
		pngs ~= new String("gnome-gegl.png");
		pngs ~= new String("gnome-gegl2-2.png");
		pngs ~= new String("gnome-gegl2.png");
		pngs ~= new String("gnome-gemvt.png");
		pngs ~= new String("gnome-ghex.png");
		pngs ~= new String("gnome-ghostview.png");
		pngs ~= new String("gnome-gimp.png");
		pngs ~= new String("gnome-globe.png");
		pngs ~= new String("gnome-gmenu.png");
		pngs ~= new String("gnome-gmush.png");
		pngs ~= new String("gnome-gnobots2.png");
		pngs ~= new String("gnome-gnomecard.png");
		pngs ~= new String("gnome-gnomeicu.png");
		pngs ~= new String("gnome-gnomine.png");
		pngs ~= new String("gnome-gnomoku.png");
		pngs ~= new String("gnome-gnumeric.png");
		pngs ~= new String("gnome-graphics.png");
		pngs ~= new String("gnome-grecord.png");
		pngs ~= new String("gnome-gsame.png");
		pngs ~= new String("gnome-gtali.png");
		pngs ~= new String("gnome-gtetris.png");
		pngs ~= new String("gnome-guppi.png");
		pngs ~= new String("gnome-help.png");
		pngs ~= new String("gnome-home.png");
		pngs ~= new String("gnome-html.png");
		pngs ~= new String("gnome-image-gif.png");
		pngs ~= new String("gnome-image-jpeg.png");
		pngs ~= new String("gnome-info.png");
		pngs ~= new String("gnome-irc.png");
		pngs ~= new String("gnome-joystick.png");
		pngs ~= new String("gnome-laptop.png");
		pngs ~= new String("gnome-lockscreen.png");
		pngs ~= new String("gnome-log.png");
		pngs ~= new String("gnome-logo-icon-transparent.png");
		pngs ~= new String("gnome-logo-icon.png");
		pngs ~= new String("gnome-logo-large.png");
		pngs ~= new String("gnome-mahjongg.png");
		pngs ~= new String("gnome-mailcheck.png");
		pngs ~= new String("gnome-mdi.png");
		pngs ~= new String("gnome-mini-commander.png");
		pngs ~= new String("gnome-mixer.png");
		pngs ~= new String("gnome-mnemonic.png");
		pngs ~= new String("gnome-modem.png");
		pngs ~= new String("gnome-money.png");
		pngs ~= new String("gnome-monitor.png");
		pngs ~= new String("gnome-month.png");
		pngs ~= new String("gnome-mouse.png");
		pngs ~= new String("gnome-multimedia.png");
		pngs ~= new String("gnome-networktool.png");
		pngs ~= new String("gnome-news.png");
		pngs ~= new String("gnome-nibbles.png");
		pngs ~= new String("gnome-note.png");
		pngs ~= new String("gnome-palm-conduit.png");
		pngs ~= new String("gnome-palm.png");
		pngs ~= new String("gnome-panel-type-corner.png");
		pngs ~= new String("gnome-panel-type-edge.png");
		pngs ~= new String("gnome-panel-type-floating.png");
		pngs ~= new String("gnome-panel-type-menu.png");
		pngs ~= new String("gnome-panel-type-sliding.png");
		pngs ~= new String("gnome-panel.png");
		// too big ignore - "gnome-ppp-animation.png");
		pngs ~= new String("gnome-ppp-filled.png");
		pngs ~= new String("gnome-qeye.png");
		pngs ~= new String("gnome-question.png");
		pngs ~= new String("gnome-reclevel.png");
		pngs ~= new String("gnome-run.png");
		pngs ~= new String("gnome-screenshot.png");
		pngs ~= new String("gnome-searchtool.png");
		pngs ~= new String("gnome-session.png");
		pngs ~= new String("gnome-set-time.png");
		pngs ~= new String("gnome-settings.png");
		pngs ~= new String("gnome-show-desktop.png");
		pngs ~= new String("gnome-spider.png");
		pngs ~= new String("gnome-squeak.png");
		pngs ~= new String("gnome-stones-file.png");
		pngs ~= new String("gnome-stones.png");
		pngs ~= new String("gnome-suse.png");
		pngs ~= new String("gnome-system.png");
		pngs ~= new String("gnome-talk.png");
		pngs ~= new String("gnome-term-linux.png");
		pngs ~= new String("gnome-term-linux2.png");
		pngs ~= new String("gnome-term-night.png");
		pngs ~= new String("gnome-term-tiger.png");
		pngs ~= new String("gnome-term.png");
		pngs ~= new String("gnome-terminal.png");
		pngs ~= new String("gnome-tigert.png");
		pngs ~= new String("gnome-touristinfo.png");
		pngs ~= new String("gnome-unknown.png");
		pngs ~= new String("gnome-user-interface.png");
		pngs ~= new String("gnome-util.png");
		pngs ~= new String("gnome-vumeter.png");
		pngs ~= new String("gnome-warning.png");
		pngs ~= new String("gnome-week.png");
		pngs ~= new String("gnome-windows.png");
		pngs ~= new String("gnome-word.png");
		pngs ~= new String("gnome-workspace.png");
		pngs ~= new String("gnome-xbill.png");
		pngs ~= new String("gnome-xterm.png");
		pngs ~= new String("gnomemeeting-logo-icon.png");
		// too big ignore - "gnomemeeting-logo.png");
		// too big ignore - "gnomemeeting-splash.png");
		
		//loadTable(table,pngs);
		
		return loadTable(pngs);
	}
	
	private Table loadTable(String[] imageFiles)
	{
		//Table table = new Table(1,1,false);
		if ( table  is  null )
		{
			table = new Table(1,1,false);
		}
		else
		{
			table.removeAll();
		}
		

		int row = 0;
		int col = 0;

		Image image;
		
		
//		Window progressWindow = new Window();//WindowType.POPUP);
//		progressWindow.setBorderWidth(10);
//		ProgressBar progressBar = new ProgressBar();
//		progressWindow.add(progressBar);
//		progressWindow.show();
		

		for ( int i=0 ; i<imageFiles.length ;i++)
		{
			String fileName = imageFiles[i];
			if ( fileName.charAt(0) != '/' )
			{
				version(linux) fileName.prepend("/usr/share/pixmaps/");
				version(Windows) fileName.prepend(r"C:\Projects\D\DynDUI\dui\images\");
			}
			image = new Image(fileName);
			image.addOnEnterNotify(&enterNotify);
			image.addOnLeaveNotify(&leaveNotify);
			table.attach(image,col,col+1,row,row+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
			++col;
			if ( col == 8 )
			{
				col = 0;
				++row;
			}
			
		}
		return table;
	}

	void loadImages(Button button)
	{
		if ( fs  is  null )
		{
			fs = new FileSelection("File Selection");
		}
		fs.setMultiple(true);
		Response response = fs.run();
		if ( response == Response.OK )
		{
			String[] selections = fs.getSelections();
			Table table = loadTable(selections);
		}
		fs.hide();
	}

	bit enterNotify(Widget widget, EventCrossing event)
	{
		printf("TestImage.mouseEnterNotify\n");
		return true;
	}
	bit leaveNotify(Widget widget, EventCrossing event)
	{
		printf("TestImage.mouseLeaveNotify\n");
		return true;
	}


}
