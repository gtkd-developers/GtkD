/*
 * This file is part of dines.
 * 
 * dines is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * dines is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with dines; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module mDines;

private import dui.All;
 	
private import mPlayField;
private import mDine;
private import mTopScores;

public class Dines : MainWindow , MenuItemListener
{	
	DinesMenu menu;
	GameStatus gameStatus;
	PlayField playField;
	TopScores topScores;
	
	int bombsFound = 0;
	
	this()
	{
		super("dines");
		setupWindow();
		topScores = new TopScores();
		show();
	}
	
	void setupWindow()
	{
		menu = new DinesMenu(this);
		playField = new PlayField(this);
		gameStatus = new GameStatus(this, playField);
		
		VBox vbox = new VBox(false,4);

		vbox.packStart(menu, false, false, 0);
		vbox.packStart(gameStatus, false, false, 0);
		vbox.packStart(playField, true, true, 0);
		
		add(vbox);
	}

	PlayField getPlayField()
	{
		return playField;
	}
	
	void pressed()
	{
		gameStatus.pressed();
	}
	
	void released()
	{
		gameStatus.released();
	}
	
	void startGame()
	{
		playField.setBombs();
		gameStatus.startGame();		
	}
	
	void endGame()
	{
		gameStatus.endGame();
		playField.showAllBombs();
		
		topScores.addScore(playField.getBombsFired(),
							playField.getNumberOfBombs(),
							playField.getRows(),
							playField.getCols(),
							gameStatus.getTime() );
	}
	
	void wonGame()
	{
		gameStatus.endGame();
		playField.showAllBombs();
	}
	
	void increaseCount()
	{
		gameStatus.startGame();
		gameStatus.setCounts();
	}
	
	void decreaseCount()
	{
		gameStatus.startGame();
		gameStatus.setCounts();
	}
	
	void hit(Dine dine)
	{
		gameStatus.startGame();
		gameStatus.setCounts();
	}
	
		/**
	 * Menu listener callback
	 */
	void activateCallback(MenuItem menuItem, char [] action)
	{
		switch ( action )
		{
			case "game.new":
				break;
			
			case "game.scores":
				if ( topScores === null )
				{
					topScores = new TopScores();
				}
				topScores.show();
				break;
			
			case "game.quit":
				topScores.saveScores();
				DUI dui = DUI.dui();
				dui.stop();
				break;
			
			case "settings.preferences":
				break;
			
			case "help.about":
				MessageDialog d = new MessageDialog(
						this, 0,
						DialogType.INFO,DialogButtons.OK,
						"D mines\n"
						"\n"
						"D mines is an answer to\n"
						"\"Can we make a game in D within 4 hours?\""
						" \nby yaneurao at"
						"\nhttp://www.digitalmars.com/drn-bin/wwwnews?D/22902."
						"\n"
						"\nUnfortunatly I can't as this has 4:30 hours"
						"\nand I'm still making the menus and didn't start the top scores."
						"\n(I ended up spending a lot of time"
						"\n debugging the end game conditions"
						"\n this took close to 7 hours to finish)"
						" \n"
						"\nbuild with DUI"
						" \nhttp://dui.sourceforge.net"
						" \n"
						"\nby Antonio Monteiro\n"
						);
				d.run();
				d.destroy();
			break;
			
			default:
				break;
		}
	}
	
	void activateItemCallback(MenuItem menuItem, char [] action)
	{
		//printf("Workspace.MenuListener.activateItemCallback %.*s\n",action);
	}


	class DinesMenu : MenuBar
	{
		this(MenuItemListener listener)
		{
			super();
			setup(listener);
		}
		
		void setup(MenuItemListener listener)
		{
			Menu menu;
			MenuItem item;
			Dispatcher disp = Dispatcher.getDispatcher();
			
			menu = append("_Game");
			menu.append(new MenuItem(listener,"_New Game","game.new"));
			menu.append(new SeparatorMenuItem());
			menu.append(new MenuItem(listener,"_Scores","game.scores"));
			menu.append(new SeparatorMenuItem());
			menu.append(new MenuItem(listener,"_Quit","game.quit"));
			
			menu = append("_Settings");
			menu.append(new MenuItem(listener,"_Preferences","settings.preferences"));

			menu = append("_Help", true);
			menu.append(new MenuItem(listener,"_About","help.about"));

		}
	}
	
	class GameStatus : Table , ButtonClickedListener , TimeoutListener
	{
		Label missingLabel;
		Label firedLabel;
		int time;
		Label timeLabel;
	
		Button face;
	
		Dines dines;
		PlayField playField;
	
		uint timeoutHandler;
	
		bit started = false;
	
		this(Dines dines, PlayField playField)
		{
			super(1, 3, true);
			
			this.dines = dines;
			this.playField = playField;
			
			missingLabel = new Label(std.string.toString(playField.getNumberOfBombs() - playField.getBombsFound()));
			firedLabel = new Label(std.string.toString(playField.getBombsFired()));
			timeLabel = new Label("00:00");
			VBox box = new VBox(true,0);
			box.packStart(missingLabel, false, false, 0);
			box.packStart(firedLabel, false, false, 0);
			
			attach(box, 0,1,0,1);
			
			face = new Button();
			face.removeAll();
			face.add(new Image(new Pixbuf(start_xpm)));
			attach(face, 1,2, 0,1, AttachOptions.FILL, AttachOptions.FILL, 0,0);
			attach(timeLabel, 2,3, 0,1);
			
			Dispatcher disp = Dispatcher.getDispatcher();
			disp.addButtonClickedListener(this, face, "face");
		}
		
		int getTime()
		{
			return time;
		}
		
		void setPlayField(PlayField playField)
		{
			this.playField = playField;
		}
		
		void setCounts()
		{
			int missingBombs = playField.getMissingBombs();
			missingLabel.setLabel(std.string.toString(missingBombs));
			firedLabel.setLabel(std.string.toString(playField.getBombsFired()));
			if ( missingBombs == 0 )
			{
				dines.endGame();
			}
		}
		
		void startGame()
		{
			if ( !started )
			{
				started = true;
				
				face.removeAll();
				face.add(new Image(new Pixbuf(start_xpm)));
	
				Dispatcher disp = Dispatcher.getDispatcher();
				time = 0;
				timeoutHandler = disp.addTimeoutListener(this,1000);
				setCounts();
			}
			
		}

		void endGame()
		{
			Dispatcher disp = Dispatcher.getDispatcher();
			disp.removeTimeoutListener(timeoutHandler);
			timeoutHandler = 0;
			started = false;
			if ( playField.getBombsFired() == 0 && playField.getMissingBombs() == 0) 
			{
				face.removeAll();
				face.add(new Image(new Pixbuf(won_xpm)));
			}
			else
			{
				face.removeAll();
				face.add(new Image(new Pixbuf(dead_xpm)));
			}
		}
		
		void pressed()
		{
			face.removeAll();
			face.add(new Image(new Pixbuf(pressed_xpm)));
		}
		
		void released()
		{
			face.removeAll();
			face.add(new Image(new Pixbuf(inplay_xpm)));
		}
		
		bit timeoutCallback()
		{
			++time;
			int hour = time / 360;
			int mn = time / 60;
			int sec = time % 59;
			timeLabel.setText(std.string.toString(mn)
							~":"~ (sec>9 ? std.string.toString(sec) : "0"~std.string.toString(sec))
							);
			return true;
		}
		
		void buttonClickedCallback(Button button, char[] action)
		{
			switch ( action )
			{
				case "face":
					if ( started )
					{
						dines.endGame();
					}
					else
					{
						dines.startGame();
					}
					//face.removeAll();
					//face.add(new Image(new Pixbuf(start_xpm)));
					break;
					
				default:
					break;
			}
		}
	
	}
	
}

void main(char[][] args)
{
    DUI dui = DUI.dui(args);
    new Dines();
    dui.go();

}

/* XPM */
static char** inplay_xpm = [
"33 33 235 2",
"  	c None",
". 	c #DCDAD5",
"+ 	c #D8D7CC",
"@ 	c #E2DA9C",
"# 	c #E9DA6F",
"$ 	c #EDD652",
"% 	c #EBD63C",
"& 	c #EAD22C",
"* 	c #E9CF36",
"= 	c #E1CA3C",
"- 	c #DECA50",
"; 	c #D6C86C",
"> 	c #D8CE94",
", 	c #DEDAB2",
"' 	c #EADC7C",
") 	c #F8DA39",
"! 	c #F2D63C",
"~ 	c #F2DA3A",
"{ 	c #F2D237",
"] 	c #E7CA34",
"^ 	c #E2C634",
"/ 	c #DEC234",
"( 	c #D2D2CC",
"_ 	c #EADE9C",
": 	c #FADE37",
"< 	c #F5DE51",
"[ 	c #F0D22C",
"} 	c #DCBE32",
"| 	c #D0C684",
"1 	c #EEDE74",
"2 	c #FAE229",
"3 	c #F6DA26",
"4 	c #EACE28",
"5 	c #E9C639",
"6 	c #D2BA54",
"7 	c #D0BC70",
"8 	c #F8E246",
"9 	c #F9DE29",
"0 	c #F2DA29",
"a 	c #F1D628",
"b 	c #E5C22F",
"c 	c #D6B634",
"d 	c #D0B644",
"e 	c #D2CEB2",
"f 	c #F6D621",
"g 	c #E6CA2C",
"h 	c #DBBA2F",
"i 	c #CFAE2F",
"j 	c #C6AE54",
"k 	c #F3DA56",
"l 	c #F1D222",
"m 	c #CAAA2C",
"n 	c #E5C626",
"o 	c #D1B237",
"p 	c #C2A244",
"q 	c #BAB294",
"r 	c #F2D650",
"s 	c #FAE642",
"t 	c #DCBA22",
"u 	c #CBA62F",
"v 	c #C39E32",
"w 	c #CECAB1",
"x 	c #F6D63A",
"y 	c #FAEA84",
"z 	c #FEF4A8",
"A 	c #FEF294",
"B 	c #FAEA6C",
"C 	c #FAEE84",
"D 	c #F9ED97",
"E 	c #F6E464",
"F 	c #EECE26",
"G 	c #BAAA6C",
"H 	c #EACA26",
"I 	c #E2C654",
"J 	c #BEAE3C",
"K 	c #867A34",
"L 	c #5E5A34",
"M 	c #4E4A39",
"N 	c #423E2C",
"O 	c #42422C",
"P 	c #726E4C",
"Q 	c #B6AE6C",
"R 	c #C6BA7C",
"S 	c #8E8654",
"T 	c #666254",
"U 	c #5E5214",
"V 	c #726614",
"W 	c #A28E14",
"X 	c #B4961F",
"Y 	c #BE9E24",
"Z 	c #C5A224",
"` 	c #BC9A22",
" .	c #AE922C",
"..	c #F0CE37",
"+.	c #BEA620",
"@.	c #7E7224",
"#.	c #564E24",
"$.	c #76725C",
"%.	c #ACAAA8",
"&.	c #787874",
"*.	c #323231",
"=.	c #1E1E1C",
"-.	c #1B1A14",
";.	c #262624",
">.	c #3E3E3C",
",.	c #9A924C",
"'.	c #8E8A64",
").	c #827E5C",
"!.	c #6A6A60",
"~.	c #52524C",
"{.	c #16140C",
"].	c #373212",
"^.	c #4A3E14",
"/.	c #7C661C",
"(.	c #9C8240",
"_.	c #AE8E2C",
":.	c #EAD674",
"<.	c #524610",
"[.	c #232223",
"}.	c #2A2A2B",
"|.	c #2E2E2C",
"1.	c #727274",
"2.	c #5E5E5C",
"3.	c #221E14",
"4.	c #B48E24",
"5.	c #AE9E6C",
"6.	c #EED258",
"7.	c #6A5A14",
"8.	c #625614",
"9.	c #4A4A4C",
"0.	c #3C3A34",
"a.	c #867624",
"b.	c #BA9420",
"c.	c #AE8A1C",
"d.	c #AA924C",
"e.	c #6C5E18",
"f.	c #B29A1C",
"g.	c #585648",
"h.	c #F2EDB7",
"i.	c #5E5A44",
"j.	c #6A5E2C",
"k.	c #9E8A1C",
"l.	c #C29624",
"m.	c #A68634",
"n.	c #EECA38",
"o.	c #8E7A1C",
"p.	c #96861C",
"q.	c #D6D2B2",
"r.	c #FCF6CC",
"s.	c #FAF2BC",
"t.	c #363631",
"u.	c #A68C38",
"v.	c #B49224",
"w.	c #AC8620",
"x.	c #A47E21",
"y.	c #EECA2C",
"z.	c #665A17",
"A.	c #A6A284",
"B.	c #EEE27C",
"C.	c #A69A54",
"D.	c #CFAA23",
"E.	c #A5821E",
"F.	c #9A7A34",
"G.	c #DACE6C",
"H.	c #EEE6B4",
"I.	c #A69638",
"J.	c #C6B654",
"K.	c #DAB623",
"L.	c #D2AE22",
"M.	c #CBA621",
"N.	c #9A761F",
"O.	c #E4BE30",
"P.	c #DECE44",
"Q.	c #CEC264",
"R.	c #C2B654",
"S.	c #9A8A24",
"T.	c #5A4E0C",
"U.	c #A4921C",
"V.	c #CAAB1F",
"W.	c #DEBE1E",
"X.	c #D6B624",
"Y.	c #C49E22",
"Z.	c #DECA74",
"`.	c #EAC624",
" +	c #BEB244",
".+	c #957F14",
"++	c #86760C",
"@+	c #D4BA1C",
"#+	c #E4C220",
"$+	c #D5B223",
"%+	c #9E761C",
"&+	c #9E8E60",
"*+	c #DEB630",
"=+	c #E2BA2C",
"-+	c #D6BE24",
";+	c #E2BE21",
">+	c #A07A1F",
",+	c #946E1A",
"'+	c #AEA68C",
")+	c #DAB230",
"!+	c #8E6A19",
"~+	c #D6AE2C",
"{+	c #9A8A64",
"]+	c #D2AA2C",
"^+	c #D6AE24",
"/+	c #AE9214",
"(+	c #94721C",
"_+	c #C2BEB4",
":+	c #EACE54",
"<+	c #423A14",
"[+	c #3E360C",
"}+	c #866A14",
"|+	c #A88E18",
"1+	c #9C7F16",
"2+	c #AA7E1C",
"3+	c #9A721C",
"4+	c #8B6619",
"5+	c #CAAA4C",
"6+	c #CAA224",
"7+	c #957A14",
"8+	c #926A18",
"9+	c #92763C",
"0+	c #C49A24",
"a+	c #8C6F14",
"b+	c #957618",
"c+	c #C4C2B4",
"d+	c #9A7A1A",
"e+	c #826514",
"f+	c #BABAA4",
"g+	c #B28A1C",
"h+	c #BAA664",
"i+	c #C6C6B4",
"j+	c #BEB68C",
"k+	c #B29E64",
"l+	c #B2AE8C",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . + @ # $ % & * = - ; > + . . . . . . . . . . ",
". . . . . . . . . , ' ) ) ! ~ % { * * ] = ^ / ; ( . . . . . . . . ",
". . . . . . . . _ : : < : ) ) ~ ! [ & * ] = ^ / } | . . . . . . . ",
". . . . . . , 1 : : 2 : : : ) ) 3 ~ { [ 4 ] 5 ^ } 6 7 ( . . . . . ",
". . . . . + ) : : : 8 9 9 9 9 9 0 0 a % a & ] ^ b } c d e . . . . ",
". . . . , < : ) : : 9 : 9 9 9 9 9 9 3 f [ [ & g ^ } h i j ( . . . ",
". . . . k ) : : : 9 9 2 2 9 9 9 9 9 9 0 a l [ 4 g / } c m j . . . ",
". . . ' ) ) : ) 9 9 2 9 9 2 2 9 9 9 3 9 3 0 l 4 g n } c o p q . . ",
". . + r ) ) : 3 : 9 8 s s 2 2 2 2 2 9 8 8 < ~ [ g n } t o u v w . ",
". . # x ) ) 3 9 9 8 y z z A s 2 2 8 B C D y E ~ F g b t o m v G . ",
". + x { { H I J K L M N O P Q E 8 B D R S T L L U V W X Y Z `  .+ ",
". @ { ..+.@.#.$.%.&.*.=.-.;.>.L ,.'.).M !.~.;.{.{.{.].^.L /.(._.q ",
". :.{ ..<.].;.!.%.&.*.=.-.=.=.[.}.}.|.>.1.2.|.=.[.=.[.;.}.3. .4.5.",
". 6...x 7.8.[.*.9.0.;.=.[.[.;.}.'.'.}.[.*.}.[.[.[.;.;.|.a.^.b.c.d.",
". ....{ e.f.<.[.=.[.=.=.[.;.}.g.h.h.i.[.=.=.[.[.[.;.;.j.k.#.l._.m.",
". n.n.[ o.[ p.<.{.-.=.[.;.;.*.q.r.s.| t.;.=.[.;.;.}.|.u.u 7.v.w.x.",
". n.n.y.[ [ [ J z.t.[.*.9.T A.r.r.s.B.C.>.}.;.}.*.M K D.D.v 4.E.F.",
". 5 5 y...F l l l & a 0 & G._ H.H.D $ p.e.V e.I.J.d K.L.M.` _.E.N.",
". I O.b y.y.l l a f 0 0 a P.Q.Q Q R.S.T.e.U.W V.W.t X.D.Y.b.w.F.(.",
". Z.O.b `.y.H F F a f f 0 % P. +I.U..++++.W.@+#+#+t $+M.` 4.x.%+&+",
". > *+=+O.#+`.H F F a l f f a & -+-+@+n 4 H n ;+t $+D.Z b.w.>+,+'+",
". + )+*+t O.#+`.`.F 4 l l l a a & 4 H F H `.;+t $+L.Z l.4.E.N.!+( ",
". . 7 ~+)+t ;+#+#+`.H 4 [ ~ k k k ~ 4 n #+W.L.V.M.Z ` v.w.>+,+{+. ",
". . e ]+~+^+)+t ;+#+#+] $ 6.$ $ $ * n #+W.V.X /+/+/+v.w.x.(+!+_+. ",
". . . 7 u ]+L.$+K.t =+n :+o 8.<+[+[+].}+$+|+1+E.w.w.w.2+3+4+&+. . ",
". . . . 5+6+6+]+^+$+K.K.} $+|+7+7+1+7+f.` 1+(+7+7+x.>+N.8+9+. . . ",
". . . . e v 0+6+M.]+^+^+^+^+$+$+L.M.M.b.7+}+a+b+b+>+b+,+!+c+. . . ",
". . . . . w Y.0+Y.Y.6+6+Z /+E.d+7+7+7+a+e+e+a+,+(+,+8+4+f+. . . . ",
". . . . . . e p l.l.l.l.l.c.1+(+a+}+a+}+e+}+,+!+,+8+9+c+. . . . . ",
". . . . . . . . j g+4.4.g+c.w.1+d+b+(+,+}+!+!+!+4+&+. . . . . . . ",
". . . . . . . . . w h+w.w.w.2+>+>+%+b+3+,+!+4+{+i+. . . . . . . . ",
". . . . . . . . . . . + j+k+u.2+3+(+N.(.&+l+( . . . . . . . . . . "];

/* XPM */
static char** start_xpm = [
"31 33 244 2",
"  	c None",
". 	c #EEEBE7",
"+ 	c #000000",
"@ 	c #D5D5CF",
"# 	c #CDCDCC",
"$ 	c #C6C6BA",
"% 	c #A9A9AA",
"& 	c #777671",
"* 	c #565653",
"= 	c #454544",
"- 	c #3C3A30",
"; 	c #3F3A1F",
"> 	c #67622B",
", 	c #AE9F29",
"' 	c #EED33C",
") 	c #EDCF25",
"! 	c #E3CC2E",
"~ 	c #B29F33",
"{ 	c #7C723B",
"] 	c #5B5637",
"^ 	c #6A6A6C",
"/ 	c #9E9E9B",
"( 	c #AEAEAB",
"_ 	c #C3C2BA",
": 	c #727274",
"< 	c #4C4C49",
"[ 	c #333230",
"} 	c #1C1C09",
"| 	c #231E00",
"1 	c #373217",
"2 	c #5D4E00",
"3 	c #92811C",
"4 	c #8B7A26",
"5 	c #816A03",
"6 	c #4D4618",
"7 	c #6B6650",
"8 	c #524E41",
"9 	c #262207",
"0 	c #17160B",
"a 	c #16120A",
"b 	c #1D1D1C",
"c 	c #363630",
"d 	c #817E6E",
"e 	c #B2B2B4",
"f 	c #242424",
"g 	c #2B2B2C",
"h 	c #3E3E35",
"i 	c #5D5D5C",
"j 	c #968225",
"k 	c #8A8A8C",
"l 	c #A39E75",
"m 	c #524D2F",
"n 	c #F4D400",
"o 	c #FFE014",
"p 	c #685E2C",
"q 	c #FADB3A",
"r 	c #A18B07",
"s 	c #DCC00A",
"t 	c #FFE001",
"u 	c #F8DC10",
"v 	c #E4C30F",
"w 	c #A68E2C",
"x 	c #D9B31B",
"y 	c #FFDB18",
"z 	c #C5B32B",
"A 	c #6A5B00",
"B 	c #6F6A46",
"C 	c #FFE412",
"D 	c #C6B53D",
"E 	c #D0AA39",
"F 	c #D1AF20",
"G 	c #CBAE42",
"H 	c #EDDF79",
"I 	c #F3D80C",
"J 	c #DBC735",
"K 	c #D1C35B",
"L 	c #DCD291",
"M 	c #E7E2AB",
"N 	c #F4EBA0",
"O 	c #FFEF76",
"P 	c #FDE74B",
"Q 	c #FEE42D",
"R 	c #E5DB7D",
"S 	c #E0D69A",
"T 	c #D5C677",
"U 	c #D0BC61",
"V 	c #D7BB36",
"W 	c #DDB71A",
"X 	c #D3A616",
"Y 	c #BBB28E",
"Z 	c #DADAC9",
"` 	c #FED717",
" .	c #FFED63",
"..	c #FFF396",
"+.	c #FDEF8F",
"@.	c #FFF386",
"#.	c #FFE834",
"$.	c #F9EB8D",
"%.	c #F6E675",
"&.	c #F4D644",
"*.	c #EDCB21",
"=.	c #E1BB10",
"-.	c #D1AB13",
";.	c #CA9E1C",
">.	c #CFCAAC",
",.	c #EFD761",
"'.	c #FEDC04",
").	c #7B7644",
"!.	c #52522E",
"~.	c #ACA261",
"{.	c #DDD36C",
"].	c #F4E366",
"^.	c #ECC30F",
"/.	c #C59E15",
"(.	c #BEA657",
"_.	c #C8BF75",
":.	c #0A0A02",
"<.	c #FFF6A7",
"[.	c #E4DB8A",
"}.	c #E7BB10",
"|.	c #D9B30E",
"1.	c #AF923E",
"2.	c #FDD31B",
"3.	c #FDD802",
"4.	c #D4CB77",
"5.	c #FFEC46",
"6.	c #CEC578",
"7.	c #EDDF8A",
"8.	c #F7DF56",
"9.	c #ECC303",
"0.	c #DAAF08",
"a.	c #BF8E08",
"b.	c #FCE971",
"c.	c #E9DF73",
"d.	c #C4BB70",
"e.	c #C9BA70",
"f.	c #F1DB57",
"g.	c #EABF12",
"h.	c #B88E13",
"i.	c #DDCF6C",
"j.	c #EDE385",
"k.	c #DACE84",
"l.	c #E2CF50",
"m.	c #F2C613",
"n.	c #E9BF05",
"o.	c #CCA207",
"p.	c #C59A0A",
"q.	c #F9CF1B",
"r.	c #FAD405",
"s.	c #AC9921",
"t.	c #AB9318",
"u.	c #CCAF13",
"v.	c #EEC705",
"w.	c #E2B804",
"x.	c #D2A214",
"y.	c #C29607",
"z.	c #B68A06",
"A.	c #F2C62A",
"B.	c #F6CB1B",
"C.	c #EBD745",
"D.	c #FFF6C0",
"E.	c #8A7700",
"F.	c #635500",
"G.	c #6B5F06",
"H.	c #BA9B00",
"I.	c #DCBA00",
"J.	c #D5AB06",
"K.	c #C8A231",
"L.	c #BB9704",
"M.	c #B1860B",
"N.	c #F6CB0D",
"O.	c #FFFAC3",
"P.	c #CBB520",
"Q.	c #7F6F0C",
"R.	c #524601",
"S.	c #968203",
"T.	c #E6BB03",
"U.	c #DEB203",
"V.	c #D3A605",
"W.	c #CB9A05",
"X.	c #C09209",
"Y.	c #B08209",
"Z.	c #F7CF04",
"`.	c #DECB47",
" +	c #F0E6AA",
".+	c #EFDC44",
"++	c #726300",
"@+	c #CDA614",
"#+	c #AC8827",
"$+	c #E8C73E",
"%+	c #BBAC5F",
"&+	c #C1B263",
"*+	c #A58F06",
"=+	c #B08F06",
"-+	c #A88B00",
";+	c #D3B000",
">+	c #A9790B",
",+	c #E2CA63",
"'+	c #F2C705",
")+	c #F2D000",
"!+	c #A6930F",
"~+	c #CAA700",
"{+	c #362D00",
"]+	c #AB7D0C",
"^+	c #A4750B",
"/+	c #E6B615",
"(+	c #877300",
"_+	c #483A03",
":+	c #725F00",
"<+	c #CC9E08",
"[+	c #B6860B",
"}+	c #A27A12",
"|+	c #9D6D0B",
"1+	c #E1B215",
"2+	c #C29F00",
"3+	c #F0CC04",
"4+	c #9F8300",
"5+	c #D2A207",
"6+	c #97690F",
"7+	c #D6BE5C",
"8+	c #564A02",
"9+	c #DAAA06",
"0+	c #996D08",
"a+	c #9D8A5C",
"b+	c #D3CEAF",
"c+	c #DAAA13",
"d+	c #DEAE12",
"e+	c #7C6700",
"f+	c #A1710A",
"g+	c #95650C",
"h+	c #C2BEB1",
"i+	c #AE9300",
"j+	c #B49300",
"k+	c #A18E56",
"l+	c #97752F",
"m+	c #B98E05",
"n+	c #CA960D",
"o+	c #BABAA0",
"p+	c #C6AE68",
"q+	c #B27D07",
"r+	c #A1925E",
"s+	c #C0B684",
"t+	c #9C7210",
"u+	c #A18232",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
"+ . @ @ # $ % & * = - ; > , ' ) ) ! ~ { ] * * * ^ / ( _ # @ @ ",
". . @ / : < : % & [ } } | 1 2 3 4 5 6 7 8 9 0 a b c = ^ d e @ ",
"+ . @ = [ f ^ % & [ b b b f f g g g h : i g b b b b f g f _ . ",
". . . i * f c < - f b b f f g 3 j g f c g f f f f g g k < . . ",
"+ . . i l 6 f b f b f f f g m n o ] b b b f f f f g p / i . . ",
". . . d q r 6 a b b b f g [ s t u v h f f b f f g g w x & . . ",
"+ . . q y y z A c f [ < B , C t t t D m g f g c m 4 E F G . . ",
". . H y y o y I J K L M N O P C t o Q R S L T U V s W x X Y . ",
"+ Z ` y y o o o o  ...+.....@.#.C P O @.+.$.%.&.*.v =.x -.;.>.",
". ,.` y y y '.y Q +.S ).!.~.@. .#. .{.{ m d S ].' ^.=.x X /.(.",
"Z ` ` ` y y t t #.@._.0 :.m <.O P O _.0 :.h [.%.&.^.}.|.X /.1.",
"S 2.2.` 3.y '.t o O 4.- 0 ).@.O 5.%.6.- 0 p 7.8.&.9.s 0.X /.a.",
",.2.` ` '.'.'.t t P %.T _.[.@.b.c.c.R _.d.e.7.f.) ^.g.|.X ;.h.",
"&.2.2.` 3.'.'.t t C 5. .O O O O ].i.4.[.j.k.l.) m.n.=.|.o.p.h.",
"q.2.r.` 3.3.3.t t t t t C O ..<.N i.z s.~ t.u.v v.n.w.|.x.y.z.",
"A.B.q.2.r.3.'.'.'.t t u C.+.D.D.+.R u.E.F.G.H.I.n.n.w.J.K.L.M.",
"B.B.N.r.2.r.3.'.'.t t I {.N D.O.<.j.P.Q.R.R.S.I.s T.U.V.W.X.Y.",
"A.m.B.Z.n r.I 3.'.I '.I `.j.M  +$..+S.A ++F.r w.n.w.0.@+p.#+Y.",
"$+m.m.m.Z.Z.r.3.'.'.'.I ! K %+&+z *+2 ++=+-+;+n.T.w.V.o.y.M.>+",
",+g.g.m.'+)+s )+n 3.n u I ! z s.!+S.E.~+s I.n.5 {+=+V.p.h.]+^+",
"k./+}.^.9.'+n.(+;+3.n 3.'.I ) s I.I.v )+)+*+_+| :+J.<+X.[+}+|+",
"@ 1+/+/+n.9.v.;+Q.:+2+3+)+3.I n )+)+I.4+A a {+A 2+5+p.h.Y.^+6+",
"+ 7+1+1+T.T.n.9.9.r A R.8+A A F.F.8+{+9 {+8+5 9+V.W.X.M.}+0+a+",
". b+c+9+d+/+T.n.9.9.'+~+(+e+e+++:+:+5 e+5 H.V.V.2+X.z.]+f+g+h+",
"+ . U c+J.0.U.w.T.n.9.9.9.w.;+L.i+j+<+o.0.9+o.W.X.[+]+f+6+k+. ",
". . . E x.V.9+U.U.w.w.w.T.T.T.w.w.U.0.0.V.<+W.a.z.]+^+6+l+. . ",
"+ . . b+;.<+5+V.9+9+0.0.U.0.U.0.9+J.5+5+W.X.m+M.]+^+0+g+h+. . ",
". . . . >.;.n+<+5+5+5+5+V.V.5+5+<+<+p.X.m+z.Y.>+^+6+g+o+. . . ",
"+ . . . . b+;.n+n+n+W.n+W.W.y.n+X.a.m+z.M.>+^+|+6+l+_ . . . . ",
". . . . . . . p+a.a.a.a.a.a.a.z.z.M.q+>+^+f+0+g+r+. . . . . . ",
"+ . . . . . . . >.(.[+Y.[+Y.q+>+>+^+^+|+0+g+k+_ . . . . . . . ",
". + . + . + . + . + @ s+~ #+Y.^+f+t+u+r+%+@ . + . + . + . + . "];

/* XPM */
static char** dead_xpm = [
"32 33 244 2",
"  	c None",
". 	c #DCDAD5",
"+ 	c #000000",
"@ 	c #DAD6CC",
"# 	c #E2DA9C",
"$ 	c #E8DA74",
"% 	c #E8D658",
"& 	c #ECD63C",
"* 	c #ECD236",
"= 	c #E6CE3C",
"- 	c #E5CA37",
"; 	c #DECA54",
"> 	c #D6CA6C",
", 	c #D8CE94",
"' 	c #D5D5CC",
") 	c #DEDAB2",
"! 	c #EEDE74",
"~ 	c #F4DE54",
"{ 	c #F8DA38",
"] 	c #F5D637",
"^ 	c #E2C634",
"/ 	c #E2C654",
"( 	c #EADE87",
"_ 	c #FADE37",
": 	c #F0DA3A",
"< 	c #EDD228",
"[ 	c #EACE34",
"} 	c #DCC236",
"| 	c #DCBE31",
"1 	c #D2C67C",
"2 	c #DADACC",
"3 	c #F6DA27",
"4 	c #F0DA2C",
"5 	c #D2BA54",
"6 	c #FAE223",
"7 	c #F9DE25",
"8 	c #F4D627",
"9 	c #EECA31",
"0 	c #E3C22D",
"a 	c #D2B644",
"b 	c #CEB23C",
"c 	c #CECAB1",
"d 	c #F4DA54",
"e 	c #EBD62C",
"f 	c #E5CA27",
"g 	c #DCBA2E",
"h 	c #D2CEB2",
"i 	c #B9A219",
"j 	c #EACB27",
"k 	c #D2B22E",
"l 	c #CEAE34",
"m 	c #C6AE54",
"n 	c #EADA7C",
"o 	c #3A360C",
"p 	c #766A11",
"q 	c #9C8A17",
"r 	c #020204",
"s 	c #605610",
"t 	c #161604",
"u 	c #C9B21C",
"v 	c #C1AA1F",
"w 	c #655A11",
"x 	c #CAAE1F",
"y 	c #CBA62E",
"z 	c #BAB294",
"A 	c #0D0C04",
"B 	c #534A0C",
"C 	c #151204",
"D 	c #A69614",
"E 	c #CAB61C",
"F 	c #060604",
"G 	c #CAAA2C",
"H 	c #C49E2A",
"I 	c #4C420C",
"J 	c #C2AE14",
"K 	c #BAA61C",
"L 	c #EFCE2B",
"M 	c #D8B22A",
"N 	c #C2A244",
"O 	c #BAAA6C",
"P 	c #F5D239",
"Q 	c #665E14",
"R 	c #2A2204",
"S 	c #9E8E14",
"T 	c #0A0604",
"U 	c #160E04",
"V 	c #DEC228",
"W 	c #D3AE26",
"X 	c #CAA22C",
"Y 	c #BD9A26",
"Z 	c #B18E27",
"` 	c #363204",
" .	c #CCBA24",
"..	c #FAEA4C",
"+.	c #F4E244",
"@.	c #7A6E14",
"#.	c #423A0C",
"$.	c #E6CE1C",
"%.	c #261E07",
"&.	c #D1B221",
"*.	c #CAAA4C",
"=.	c #BD9E28",
"-.	c #B89224",
";.	c #EAD674",
">.	c #FAE65C",
",.	c #EADC5C",
"'.	c #DCCA4C",
").	c #201604",
"!.	c #927E14",
"~.	c #E3C222",
"{.	c #D8BA1F",
"].	c #CBA622",
"^.	c #AE9E6C",
"/.	c #EED25C",
"(.	c #FCEE84",
"_.	c #CEC264",
":.	c #C6AE20",
"<.	c #E5BE2F",
"[.	c #DEBC22",
"}.	c #B99621",
"|.	c #AA924C",
"1.	c #EECB3F",
"2.	c #FCF2B0",
"3.	c #FEF6B4",
"4.	c #F4EAA0",
"5.	c #DACE74",
"6.	c #BEAE3C",
"7.	c #D8BE1C",
"8.	c #E2BE23",
"9.	c #D8B629",
"0.	c #C6A62C",
"a.	c #C19624",
"b.	c #AE8A1C",
"c.	c #A68634",
"d.	c #FDF6C9",
"e.	c #E2D67C",
"f.	c #C0B240",
"g.	c #867610",
"h.	c #5E520C",
"i.	c #6E5E0C",
"j.	c #B09814",
"k.	c #CDAA22",
"l.	c #AA8624",
"m.	c #A57E22",
"n.	c #F2D226",
"o.	c #DECE64",
"p.	c #F2EAB0",
"q.	c #FEFACC",
"r.	c #EEE27C",
"s.	c #C6B434",
"t.	c #7E720C",
"u.	c #4E460C",
"v.	c #D0B61C",
"w.	c #9C761F",
"x.	c #EAC644",
"y.	c #EAC530",
"z.	c #EEE6B4",
"A.	c #928218",
"B.	c #6E620C",
"C.	c #9A7A34",
"D.	c #DECE44",
"E.	c #B8B06C",
"F.	c #564E14",
"G.	c #A3921C",
"H.	c #A28E14",
"I.	c #E2BA2C",
"J.	c #D2AA29",
"K.	c #9C7A24",
"L.	c #9A8244",
"M.	c #DECA74",
"N.	c #EAC624",
"O.	c #A69634",
"P.	c #BEA614",
"Q.	c #A6821E",
"R.	c #9E8E60",
"S.	c #DEB630",
"T.	c #9E8617",
"U.	c #966E1C",
"V.	c #AEA68C",
"W.	c #361E14",
"X.	c #3D2614",
"Y.	c #3A2A0C",
"Z.	c #462A14",
"`.	c #34220C",
" +	c #3E320C",
".+	c #CAA224",
"++	c #B68E24",
"@+	c #906A1E",
"#+	c #CEBA74",
"$+	c #A24A44",
"%+	c #B44A4C",
"&+	c #A34544",
"*+	c #4E2224",
"=+	c #7A3234",
"-+	c #7E3E2C",
";+	c #9A7E14",
">+	c #AE8624",
",+	c #916E1A",
"'+	c #9A8A64",
")+	c #D6D2B4",
"!+	c #AC4A4B",
"~+	c #C65654",
"{+	c #C65254",
"]+	c #CC5554",
"^+	c #863D3C",
"/+	c #C04E4C",
"(+	c #602C2C",
"_+	c #99721D",
":+	c #8E661C",
"<+	c #C2BEB4",
"[+	c #B94E4C",
"}+	c #D25654",
"|+	c #D65A5C",
"1+	c #763634",
"2+	c #9C4244",
"3+	c #7F3A3C",
"4+	c #5C4C0C",
"5+	c #6B3234",
"6+	c #DC5E5C",
"7+	c #924244",
"8+	c #923E3C",
"9+	c #92763C",
"0+	c #823634",
"a+	c #1A1604",
"b+	c #7A5B14",
"c+	c #C69A24",
"d+	c #6C5A14",
"e+	c #201C04",
"f+	c #BABAA4",
"g+	c #C26E3C",
"h+	c #C05254",
"i+	c #C4C2B4",
"j+	c #C2B074",
"k+	c #72422C",
"l+	c #BAA264",
"m+	c #B65644",
"n+	c #6E3A2C",
"o+	c #C6C6B4",
"p+	c #BA927C",
"q+	c #AE6654",
"r+	c #82522C",
"s+	c #926E3C",
"t+	c #9F9267",
"u+	c #B6AE8C",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
"+ . + . + . + . + . @ # $ % & * = - ; > , ' + . + . + . + . + . ",
". . . . . . . . ) ! ~ { ] { ] * * = - ^ ^ / > @ . . . . . . . + ",
"+ . . . . . . ( ~ _ _ _ : : { ] * < [ - ^ ^ } | 1 . . . . . . . ",
". . . . . 2 ~ _ _ _ _ _ _ 3 4 4 4 * < [ [ ^ ^ | 5 5 ' . . . . + ",
"+ . . . ) ~ _ _ _ 6 _ 7 _ 7 { 3 3 4 8 < < 9 ^ 0 | a b c . . . . ",
". . . ) d { _ _ _ 7 _ _ 7 7 7 7 7 3 8 e < [ f ^ | g b b h . . + ",
"+ . . d { _ _ _ _ 7 6 6 7 6 7 7 7 7 i i 8 < [ j } g k l m . . . ",
". . n d _ { { _ 7 o p 7 6 q r 7 7 3 s t u < v w x } g l y z . + ",
"+ 2 { ] { _ 3 7 _ u A q B C D 7 6 7 E C A s F C G | g b G H c . ",
". n ] { { 3 _ 7 7 6 I F t J 6 6 7 7 7 K r r I L f 0 g M y N O + ",
"@ P ] { { { 3 3 7 Q r R r D 6 6 6 7 S T r r U V f 0 g W X Y Z ' ",
"# ] ] ] 8 3 7 7 7 ` E 6 p r  ...+.: @.#.$.i A %.j V | &.*.=.-.z ",
";.P P ] { 3 3 3 7 7 6 6 6  .: >.,.'.} f e $.p ).!.~.{.k ].=.Z ^.",
"/.P ] 8 ] 8 3 7 7 7 7 7 6 ..(.(.( _.u J {.&.{.:.x <.[.k X }.Z |.",
"1.L P 8 8 3 3 3 7 7 6 7 6 (.2.3.4.5.6.S q S v 7.~.8.9.&.0.a.b.c.",
"1.9 L P 8 8 8 3 3 7 3 e % 4.d.d.2.e.f.g.h.i.j.{.V [.9.k.H }.l.m.",
"1.9 9 P n.8 8 3 7 7 7 $.o.p.q.d.3.r.s.t.u.u.!.v.V [.M G Y -.c.w.",
"x.y.9 9 L n.8 8 8 3 7 e > ( z.p.4.,.A.w B.h.q {.8.9.W 0.Y b.m.C.",
"/ y.y.9 9 L n.8 8 8 3 4 D._.E.E.f.S F.B.G.H.k.7.I.v.J.H }.l.K.L.",
"M.<.<.N.j L $.< < 8 4 e e '.E.O.G.!.g.P.7.[.~.8.[.W ].=.Z Q.w.R.",
", S.I.<.~.j j L $.n.$.!.w h.s F.u.u.B T.i ~.[.[.v.k.H -.l.K.U.V.",
"@ M S.S.8.8.N.N.j j.r F W.X.Y.%.R Z.Z.`. +T.j.M k..+a.++m.w.@+' ",
"+ #+M M I.I.8.~.x C r Z.$+%+&+*+=+&+&+-+X.r ;+].].=.-.>+w.,+'+. ",
". )+J.W W 9.[.W R r T !+~+{+]+^+!+{+/+!+(+%.R ;+}.-.l.m._+:+<++ ",
"+ . #+].J.W M T.r C X.[+}+|+%+1+%+]+%+2+3+A r 4+Q.b.Q.w.@+R.. . ",
". . . *..+.+J. +r U 5+]+6+|+!+7+{+]+%+8+1+T ).U ,+m.w.@+9+. . + ",
"+ . . h H H .+_+F U 0+}+6+|+%+!+]+]+[+8+1+a+r F b+_+@+:+<+. . . ",
". . . . c H c+H d+r }+}+|+}+{+/+{+/+&+^+(+r e+b+_+,+@+f+. . . + ",
"+ . . . . h N a.-.g+}+]+}+}+]+]+h+[+2+3+(+b+w._+@+9+i+. . . . . ",
". . . . . . . j+++g+h+{+h+{+/+[+%+2+3+5+k+U.,+:+R.. . . . . . + ",
"+ . . . . . . . c l+m+[+%+%+!+&+8+3+5+n+,+:+'+o+. . . . . . . . ",
". + . + . + . + . + )+p+q+2+8+0+1+r+s+t+u+' . + . + . + . + . + "];

/* XPM */
static char** won_xpm = [
"32 33 236 2",
"  	c None",
". 	c None",
"+ 	c None",
"@ 	c #D8D7CF",
"# 	c #E1DAA1",
"$ 	c #EAD977",
"% 	c #EAD858",
"& 	c #EAD644",
"* 	c #EED137",
"= 	c #E9CF36",
"- 	c #E2CA3C",
"; 	c #E0C854",
"> 	c #D8CA64",
", 	c #D8CE94",
"' 	c #DEDAB4",
") 	c #EADE7C",
"! 	c #F7DA40",
"~ 	c #F6DA2C",
"{ 	c #F2D83C",
"] 	c #F2D62D",
"^ 	c #E2C634",
"/ 	c #DDC237",
"( 	c #D0D0C8",
"_ 	c #EADE8C",
": 	c #F9DE3D",
"< 	c #F6D630",
"[ 	c #E7CA30",
"} 	c #DCBC32",
"| 	c #D2C67C",
"1 	c #F2DC5C",
"2 	c #FAE229",
"3 	c #FADE31",
"4 	c #F2DA2C",
"5 	c #EBD62F",
"6 	c #EED22A",
"7 	c #EDC93F",
"8 	c #D2BA54",
"9 	c #D0BC70",
"0 	c #EACE2C",
"a 	c #E4C22C",
"b 	c #D6BD21",
"c 	c #D0B238",
"d 	c #F8DE22",
"e 	c #C8AC50",
"f 	c #D6B634",
"g 	c #CAAA2C",
"h 	c #E4D878",
"i 	c #807638",
"j 	c #645614",
"k 	c #534A14",
"l 	c #4E4610",
"m 	c #4C4216",
"n 	c #84761C",
"o 	c #E2CA24",
"p 	c #9E8E1C",
"q 	c #7A6A14",
"r 	c #746414",
"s 	c #6C6214",
"t 	c #8B7917",
"u 	c #B8A21C",
"v 	c #C4A62C",
"w 	c #C4AA2C",
"x 	c #C6A634",
"y 	c #BAB294",
"z 	c #F2CE34",
"A 	c #756A37",
"B 	c #6E6A4C",
"C 	c #94928C",
"D 	c #6C6858",
"E 	c #363418",
"F 	c #2A2204",
"G 	c #221E08",
"H 	c #322E0C",
"I 	c #544E10",
"J 	c #8C7E14",
"K 	c #E2CE24",
"L 	c #DAC61C",
"M 	c #D0B61C",
"N 	c #56522C",
"O 	c #3E3A24",
"P 	c #1A1604",
"Q 	c #524611",
"R 	c #9B821F",
"S 	c #A68A24",
"T 	c #A38D37",
"U 	c #C8C6B4",
"V 	c #252212",
"W 	c #242424",
"X 	c #868284",
"Y 	c #343433",
"Z 	c #151514",
"` 	c #1D1D1C",
" .	c #2B2B2C",
"..	c #3E3E3C",
"+.	c #7E7A74",
"@.	c #44423C",
"#.	c #967E34",
"$.	c #BAAA6C",
"%.	c #F6D23A",
"&.	c #525250",
"*.	c #8A8A87",
"=.	c #5A5A5C",
"-.	c #4B4A46",
";.	c #C49E34",
">.	c #AF9221",
",.	c #6E5E14",
"'.	c #B2A63C",
").	c #B99A24",
"!.	c #BE9A22",
"~.	c #B69222",
"{.	c #5C562E",
"].	c #FAE65C",
"^.	c #EADE5C",
"/.	c #56523C",
"(.	c #72622C",
"_.	c #B18E25",
":.	c #B09E68",
"<.	c #EED25C",
"[.	c #453C0C",
"}.	c #CEC264",
"|.	c #FAEE94",
"1.	c #B2A654",
"2.	c #D1AE28",
"3.	c #AF8A1C",
"4.	c #AA924C",
"5.	c #EECE44",
"6.	c #E9C62E",
"7.	c #746E48",
"8.	c #FEF6B4",
"9.	c #F4EAA0",
"0.	c #DACE74",
"a.	c #665E3C",
"b.	c #5C5840",
"c.	c #322A0C",
"d.	c #A68634",
"e.	c #3C3608",
"f.	c #3A3624",
"g.	c #928A44",
"h.	c #FDF6C9",
"i.	c #FCF2B0",
"j.	c #C4B438",
"k.	c #4E4A39",
"l.	c #DBB628",
"m.	c #A47E20",
"n.	c #BEA224",
"o.	c #6E663C",
"p.	c #C6AE20",
"q.	c #F1E9B1",
"r.	c #7E720C",
"s.	c #E3BE29",
"t.	c #5A4E24",
"u.	c #7A6214",
"v.	c #92763C",
"w.	c #9A7A34",
"x.	c #9E9A84",
"y.	c #76724C",
"z.	c #5A4A0C",
"A.	c #928016",
"B.	c #93761A",
"C.	c #5E4E0C",
"D.	c #6E5A14",
"E.	c #C39A1E",
"F.	c #9A7722",
"G.	c #EAC234",
"H.	c #EECA30",
"I.	c #B2AEA0",
"J.	c #B6AE8C",
"K.	c #7E7A5C",
"L.	c #968E64",
"M.	c #9D936C",
"N.	c #A69E6C",
"O.	c #A69A54",
"P.	c #7A6E14",
"Q.	c #4A463C",
"R.	c #BB961F",
"S.	c #AC8620",
"T.	c #9E823C",
"U.	c #DECA74",
"V.	c #E6E6E4",
"W.	c #C3C2BB",
"X.	c #BABAA4",
"Y.	c #605E56",
"Z.	c #4E4E44",
"`.	c #7F7F7D",
" +	c #787874",
".+	c #A6821F",
"++	c #9E761C",
"@+	c #9E8E60",
"#+	c #E1DEDC",
"$+	c #EBEBE6",
"%+	c #E3E2E1",
"&+	c #ADADAC",
"*+	c #A3A3A1",
"=+	c #807E6C",
"-+	c #898682",
";+	c #C5A221",
">+	c #A17A1F",
",+	c #936E1A",
"'+	c #AEA68C",
")+	c #DAB230",
"!+	c #DEBA24",
"~+	c #B1961C",
"{+	c #BBBBB9",
"]+	c #906A1F",
"^+	c #D6AE27",
"/+	c #D6C21C",
"(+	c #867E64",
"_+	c #C9C7C4",
":+	c #B6961C",
"<+	c #C59E24",
"[+	c #BA921C",
"}+	c #9A8A64",
"|+	c #D4D0B4",
"1+	c #D2AA28",
"2+	c #D6B326",
"3+	c #747058",
"4+	c #9A721C",
"5+	c #C2BEB4",
"6+	c #CCA624",
"7+	c #BE9E2C",
"8+	c #8E661C",
"9+	c #A29E94",
"0+	c #B78E1F",
"a+	c #CAA226",
"b+	c #866E14",
"c+	c #7A725C",
"d+	c #A48614",
"e+	c #AC811E",
"f+	c #CECAB0",
"g+	c #967220",
"h+	c #B4B4B0",
"i+	c #C29624",
"j+	c #C2B074",
"k+	c #BAA664",
"l+	c #BEB68C",
"m+	c #A2925C",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
"+ . + . + . + . + . @ # $ % & * = - ; > , @ + . + . + . + . + . ",
". . . . . . . . ' ) ! ~ { { ] & = = - ^ ^ / > ( . . . . . . . + ",
"+ . . . . . . _ : : : : ~ ! < ] * * = [ - / ^ } | . . . . . . . ",
". . . . . ' 1 : : 2 : ~ 3 ~ ~ 4 4 5 6 = [ 7 / / 8 9 ( . . . . + ",
"+ . . . ' 1 : ! : 2 : 3 3 3 3 ~ ~ ] 6 5 6 0 ^ a } b c ( . . . . ",
". . . ' ! 3 ! 3 3 3 2 3 d d d d d 4 ~ 6 6 0 [ ^ } } c e ( . . + ",
"+ . . $ ! : 3 : 3 3 2 2 2 d 3 d d ~ ~ ] ] 0 0 [ / } f g e . . . ",
". . h ! ~ ! / i j k l m n b 2 d d d o p q r r s t u v w x y . + ",
"+ @ z 7 v A B C D E F G H I J K L M j N O P P P P Q j R S T U . ",
". $ * n V W X ( C Y Z Z Z ` V  . . ...C +.Y ` Z ` Z W  .@.#.$.+ ",
"@ %.%.} l W &.*.=.Y W W W W  . . .Y ..&.-.W W W W  . . .A ;.>.@ ",
"# { { ] ,.W  .Y  .W ` W W W  .'.'. .` W ` W W W W W  .>.).!.~.y ",
"$ z %.] u k V ` ` ` ` W W W {.].^./.W W ` W W W W  .(.T x !._.:.",
"<.z ] %.4 n [.Z ` ` W W  . .}.|.) 1.Y ` ` ` W W  .W T 2.x !.3.4.",
"5.z 6.w < 5 q V ` ` W W  .7.8.8.9.0.a.Y W W W  .Y b.w R c.3.d.d.",
"7 a j e.] < 4 b s W W f.g.|.h.h.i.h j.{...Y ..k.i l.l.m.H m 3.m.",
"7 n.m o.Q t p.4 ~ 4 d 6 0.q.h.h.i._ j.r.k m J M s.n.r t.u.v.d.w.",
"7 6.6.).o.x.y.z.A.u b 5 > # q.q.9.% A.j ,.j B.t C.m /.D.E.3.m.F.",
"; G.6.H.r I.@ @ J.K.o.l i L.M.N.O.P.[.e.[.F H k.Q.=.m >.R.S.w.T.",
"U.s.G.a 6.[.@ V.V.+.W.V.( X.*.Y.Y.Z.@.Y.Z.`. +-.@.k.B.E.3..+++@+",
", l.s.s.a b {.#+$+ +W.V.%+#+&+&.&+*+*+=+Y -+ +-.-.C.;+R.S.>+,+'+",
"@ )+)+!+s.s.~+=+$+ +W.V.V.#+`. +W.{+&+`. .-+`.&.m ;+R._.m.F.]+( ",
"+ 9 ^+)+!+s./+~+(+`.W.$+V.#+`. +_+{+&+`.O *.`.m :+<+[+S.++,+}+. ",
". |+1+1+2+l.l.!+~+3+W.V.V.%+`. +_+{+&+-+..-+m >.E.~.S.m.4+]+5++ ",
"+ . 9 6+1+^+2+l.!+>.7.#+V.%+ + +W.{+&+X &.Q R.7+[+3.m.F.8+M.. . ",
". . . x <+6+1+2.2+2+).e.9+@ `. +W.{+*+3+z.~+!.0+S.m.++]+v.. . + ",
"+ . . ( ;.<+a+6+1+2.2.^+b+E Y.B c+b.[.b+E.[+0+d+e+++]+]+5+. . . ",
". . . . f+E.E.<+<+a+6+6+6+a+d+t B.d+R.:+0+3.e+>+g+]+]+h+. . . + ",
"+ . . . . |+;.i+[+i+R.R.E.E.i+R.[+[+3.S.d+>+++,+]+v.U . . . . . ",
". . . . . . . j+0+0+[+0+0+0+_.3.3.e+e+m.++4+,+8+M.. . . . . . + ",
"+ . . . . . . . f+k+e+S.e+e+e+m.>+++4+,+,+8+@+W.. . . . . . . . ",
". + . + . + . + . + ' l+:.S m.4+g+F.R m+$.@ . + . + . + . + . + "];

/* XPM */
static char** pressed_xpm = [
"33 33 239 2",
"  	c None",
". 	c None",
"+ 	c None",
"@ 	c #A9A9AA",
"# 	c #777672",
"$ 	c #565654",
"% 	c #454544",
"& 	c #3B3A34",
"* 	c #666234",
"= 	c #AA9E40",
"- 	c #E8D254",
"; 	c #E8CE3D",
"> 	c #DECC44",
", 	c #AE9E44",
"' 	c #7A723C",
") 	c #5A563C",
"! 	c #6A6A6C",
"~ 	c #9E9E9C",
"{ 	c #B0B0B0",
"] 	c #CECECC",
"^ 	c #D5D5CF",
"/ 	c #A2A28C",
"( 	c #727274",
"_ 	c #4C4C4A",
": 	c #343431",
"< 	c #1C1C0C",
"[ 	c #221E04",
"} 	c #36321C",
"| 	c #5A4E0C",
"1 	c #8E822C",
"2 	c #887A34",
"3 	c #7A6E24",
"4 	c #4C4620",
"5 	c #6A6654",
"6 	c #524E44",
"7 	c #242210",
"8 	c #17160E",
"9 	c #161208",
"0 	c #1D1D1C",
"a 	c #807E74",
"b 	c #242424",
"c 	c #2B2B2C",
"d 	c #5D5D5C",
"e 	c #8E7E2C",
"f 	c #8A8A8C",
"g 	c #A29E7C",
"h 	c #56522C",
"i 	c #ECD62C",
"j 	c #F9DB37",
"k 	c #665E2C",
"l 	c #F3DA56",
"m 	c #A98A1A",
"n 	c #D5BE24",
"o 	c #F9DE25",
"p 	c #D8C234",
"q 	c #A28E3C",
"r 	c #C6AE54",
"s 	c #F4DE64",
"t 	c #C0B248",
"u 	c #3D3611",
"v 	c #6E6A4C",
"w 	c #FAE22A",
"x 	c #514D34",
"y 	c #CAAA4C",
"z 	c #D2AA2C",
"A 	c #EADE8C",
"B 	c #F5D638",
"C 	c #F6DA26",
"D 	c #ECD640",
"E 	c #DAC64C",
"F 	c #EAD674",
"G 	c #F5E367",
"H 	c #F5E247",
"I 	c #FAE23E",
"J 	c #F1DA3A",
"K 	c #DEC644",
"L 	c #D6BE44",
"M 	c #DDBE24",
"N 	c #D5B81E",
"O 	c #D2B234",
"P 	c #BEB68C",
"Q 	c #DEDAB4",
"R 	c #FBEB72",
"S 	c #FAE654",
"T 	c #F5EA9F",
"U 	c #F6E384",
"V 	c #E4C32C",
"W 	c #DEC228",
"X 	c #DDB92D",
"Y 	c #CBAE37",
"Z 	c #C2A244",
"` 	c #D0CCB2",
" .	c #FEEE8C",
"..	c #FEF298",
"+.	c #C6BA64",
"@.	c #665E14",
"#.	c #665A0C",
"$.	c #C6B21F",
"%.	c #524E2C",
"&.	c #A69E60",
"*.	c #D2B229",
"=.	c #CBA72D",
"-.	c #BE9E2C",
";.	c #B8AC6C",
">.	c #FAEE9C",
",.	c #8E864C",
"'.	c #0D0D04",
").	c #8A7E14",
"!.	c #BEAA24",
"~.	c #F6E69C",
"{.	c #CAA22C",
"].	c #BC9A21",
"^.	c #B69228",
"/.	c #E2DA9C",
"(.	c #F5D239",
"_.	c #FBEE81",
":.	c #2B260C",
"<.	c #A7962F",
"[.	c #EEDA2C",
"}.	c #F0E280",
"|.	c #D2AE24",
"1.	c #C39E32",
"2.	c #F5D624",
"3.	c #F9EC93",
"4.	c #EADC5C",
"5.	c #CBBA37",
"6.	c #E6D658",
"7.	c #DBCA54",
"8.	c #DACE84",
"9.	c #EED254",
"0.	c #EACA26",
"a.	c #E3C223",
"b.	c #CBA622",
"c.	c #B18E25",
"d.	c #B09E68",
"e.	c #F0CE3A",
"f.	c #FAE634",
"g.	c #FAEA54",
"h.	c #CEC264",
"i.	c #C5B338",
"j.	c #E4C622",
"k.	c #C6A62C",
"l.	c #BA961F",
"m.	c #B28A1C",
"n.	c #AA924C",
"o.	c #F2CE2C",
"p.	c #FDF5B4",
"q.	c #F2EAB0",
"r.	c #D6CA64",
"s.	c #A89014",
"t.	c #A18E1C",
"u.	c #C6AA1C",
"v.	c #DCB823",
"w.	c #A68638",
"x.	c #EECA38",
"y.	c #F2D226",
"z.	c #FEFACC",
"A.	c #E2D67C",
"B.	c #867614",
"C.	c #5C5214",
"D.	c #B29A14",
"E.	c #E2BE21",
"F.	c #D7B229",
"G.	c #B4961C",
"H.	c #A17E24",
"I.	c #DECE64",
"J.	c #FDF6C9",
"K.	c #7E720C",
"L.	c #4E460C",
"M.	c #928218",
"N.	c #CDAA21",
"O.	c #AE8624",
"P.	c #9A7A34",
"Q.	c #EAC644",
"R.	c #EAC530",
"S.	c #EECE26",
"T.	c #EED224",
"U.	c #EEE6B4",
"V.	c #706210",
"W.	c #9E8A14",
"X.	c #9C7620",
"Y.	c #E2C654",
"Z.	c #BEB270",
"`.	c #D2AA24",
" +	c #C4A121",
".+	c #BC9220",
"++	c #A07A20",
"@+	c #9A8240",
"#+	c #DECA74",
"$+	c #E5BE2F",
"%+	c #A29224",
"&+	c #927E14",
"*+	c #C0A618",
"=+	c #A18218",
"-+	c #9D8C62",
";+	c #E2BA2C",
">+	c #C59924",
",+	c #96731E",
"'+	c #AEA68C",
")+	c #D6AE2C",
"!+	c #EAC621",
"~+	c #F5DE57",
"{+	c #EED239",
"]+	c #CCAF1C",
"^+	c #A88220",
"/+	c #A9861D",
"(+	c #8B6619",
"_+	c #CEBA74",
":+	c #DEC61C",
"<+	c #9A8721",
"[+	c #4A3E0F",
"}+	c #443A0C",
"|+	c #906E14",
"1+	c #9A7E14",
"2+	c #907315",
"3+	c #987A18",
"4+	c #966E18",
"5+	c #D6D2B4",
"6+	c #C2AE3C",
"7+	c #362E0C",
"8+	c #887214",
"9+	c #7D6314",
"0+	c #876B14",
"a+	c #8F6A1D",
"b+	c #B2921C",
"c+	c #765D14",
"d+	c #CAA224",
"e+	c #90743C",
"f+	c #9A8214",
"g+	c #846314",
"h+	c #7B5D14",
"i+	c #BABAA4",
"j+	c #8A6214",
"k+	c #C2AE74",
"l+	c #B68A24",
"m+	c #A67E1E",
"n+	c #B6A264",
"o+	c #B6AE8C",
"p+	c #9E9A91",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . + @ # $ % & & * = - ; ; > , ' ) $ $ $ ! ~ { + ] ^ ^ . ",
". . . . / ( _ ( @ # : < < [ } | 1 2 3 4 5 6 7 8 9 0 : % ! a { ^ . ",
". . . . % : b ! @ ( : 0 0 0 b b c c c & ( d c 0 0 0 0 b c b + . . ",
". . . . d $ b : _ & b 0 0 b b c e e c b : c b b b b c c f _ . . . ",
". . . . d g 4 7 b 0 0 b b b b h i j ) b 0 0 b b b b c k / d . . . ",
". . . . a l m 4 9 0 0 b b c : n o o p & b b 0 b b c c q r a . . . ",
". . . . s j j t k u b : % v = o o w o t x c b c : x 2 y z r . . . ",
". . . A B j j C D E E F G H I w o o o C J i D ; K L M N O y P . . ",
". . Q j j j o j o o H R R S w w o o o o o G T U - V W X Y z Z ` . ",
". . F B B j j o C I R  ...+.@.#.$.w w W ' %.&.T U ; V N *.=.-.;.. ",
". . B B B B C o C H  .>...,.'.'.).w w !.9 '.%.T ~.; V M O {.].^.^ ",
". /.(.B B j j C o w _.....&.:.:.<.[.i $.u 9 ' ~.}.; V X |.y 1.^.P ",
". F (.B 2.2.C C C o S R 3.4.5.5.6.4.7.n !.r 8.U 9.0.a.M *.b.-.c.d.",
". 9.e.(.B 2.j C o o o w f.f.g._._.A h.i.$.n $.n 0.j.W X *.k.l.m.n.",
". e.(.o.B 2.C C C o w o o H _...p.q.r.t <.s.t.u.M a.M v.|.k.l.w.w.",
". x.x.(.y.(.2.2.C C o o [.6.>.z.z.p.A.t B.C.@.D.N W E.F.z 1.G.m.H.",
". x.x.x.y.y.2.C C C o [.i I.q.J.J.p.A $.K.L.L.M.N W M F.N.-.c.O.P.",
". Q.R.x.S.o.y.T.2.C C o ; 7./.U.q.3.4.M.#.V.C.W.N M v.|.k.].c.H.X.",
". Y.R.R.x.0.y.y.y.2.C o [.> h.;.Z.t t.| V.s.W.u.E.v.N `. +.+O.++@+",
". #+$+$+V 0.0.S.T.T.2.2.[.[.7.t <.%+&+B.*+a.v.a.E.v.N. +].c.=+X.-+",
". 8.X ;+$+a.0.0.S.S.T.y.2.[.J - p 5.n W S.S.j.E.N *+>+l.c.O.++,+'+",
". ^ )+v.;+E.a.!+0.S.S.T.B ~+G ~+J i {+T.0.a. +]+N.G.W.^+/+H.X.(+^ ",
". . _+)+F.v.;+E.a.0.0.{+l s 4.l D e.:+<+#.[+}+|+].1+2+2+3+X.4+,.. ",
". . 5+z )+)+v.v.E.E.j.; 9.- 6+<.V.7+8 [ :.[+8+1+<+|+9+0+4+,+a++ . ",
". . . _+=.`.|.F.v.v.E.V M.[+9 }+u #.b+F.]+N.s.m 2+9+c+(+a+(+-+. . ",
". . . . y d+b.`.`.`.|.F.:.c+m ]+b. +D.G.b+s.=+,+9+c+c+(+(+e+. . . ",
". . . . ` 1.>+d+b.d+ +d+*+ +l.G.m f+2+2+2+2+0+g+c+c+9+(+a++ . . . ",
". . . . . ` 1.>+>+].>+l.c.m =+3+2+0+0+9+9+h+V.c+h+h+g+a+i+. . . . ",
". . . . . . ` Z >+.+c.c./+=+2+2+|+9+9+9+9+9+g+h+g+j+e++ . . . . . ",
". . . . . . . . k+l+m.m.^+=+m+X.2+8+|+g+g+(+j+0+j+-+. . . . . . . ",
". . . . . . . . . ` n+^+m+m+m+X.X.,+2+,+|+a+(+-++ . . . . . . . . ",
". . . . . . . . . . . ^ P , w.m+,+4+,+H.-+o+^ . . . . . . . . . . "];
