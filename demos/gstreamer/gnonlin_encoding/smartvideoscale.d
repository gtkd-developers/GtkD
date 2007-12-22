/*
	This SmartVideoScale class has been adapted from an original
	by Edward Hervey, which was written in python for the Pitivi project.

//!/usr/bin/python
// PiTiVi , Non-linear video editor
//
//       smartscale.py
//
// Copyright (c) 2005, Edward Hervey <bilboed@bilboed.com>
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this program; if not, write to the
// Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// Boston, MA 02111-1307, USA.

//"""
//Smart video scaler
//"""

//# Algorithm logic
//#
//# PAR is the same in videobox (automatic)
//# DAR is the same in videoscale (We need to make sure)
//#
//# The whole idea is to modify the caps between videobox and videoscale so that
//# the 
*/

module smartvideoscale;

//Tango imports:

//import std.stdio;
private import tango.io.Stdout;
private import Util = tango.text.Util;
private import Integer = tango.text.convert.Integer;
private import Float = tango.text.convert.Float;

//private import tango.util.collection.LinkSeq;

//GStreamer imports:

//private import gstreamer.Pipeline;
private import gstreamer.Bin;
private import gstreamer.Element;
private import gstreamer.ElementFactory;
private import gstreamerc.gstreamertypes;
private import gstreamer.Caps;
private import gstreamer.Pad;
private import gstreamer.GhostPad;
private import gstreamer.Structure;
//private import gstreamer.Message;

class Fraction
{
public:
	this( int set_num = 1, int set_denom = 1 )
	{
		num = set_num;
		denom = set_denom;
	}
	
	this( int[2] set )
	{
		num = set[0];
		denom = set[1];
	}
	
	void set( int set_num, int set_denom )
	{
		num = set_num;
		denom = set_denom;
	}

	//TODO make some sane Gst.Fraction implementation.
	//Look at Tango for easy solutions...
	double toFloat()
	{
		return (cast(double)num) / (cast(double)denom);
	}

	char[] toUtf8()
	{
		char[] ret = Float.toUtf8(toFloat()) ~ "[" ~ Integer.toUtf8(num) ~ "/" ~ Integer.toUtf8(denom) ~ "]";
		return ret;
	}

	int num;
	int denom;
}


//TEMP a surprise global variable:

SmartVideoScale m_smartVideoScale;

extern(C) static int sinkSetCapsCb(GstPad* pad, GstCaps* caps)
{
	Stdout("SmartVideoScale.sinkSetCapsCb() C START.").newline;
	scope(exit) Stdout("SmartVideoScale.sinkSetCapsCb() C END.").newline;
	Caps caps_d = new Caps( caps );
	return m_smartVideoScale.sinkSetCaps( null, caps_d );
}

/**
* Element to do proper videoscale.
* Keeps Display Aspect Ratio.
* Adds black borders if needed.
*/
class SmartVideoScale : public Bin
{
public:
	this()
	{
		Stdout("SmartVideoScale.this() START.").newline;
		scope(exit) Stdout("SmartVideoScale.this() END.").newline;
	
		super( cast(GstBin*) ElementFactory.make("bin").getElementStruct() );
		
		displayAspectRatioOut = new Fraction();
		displayAspectRatioIn = new Fraction();
		pixelAspectRatioOut = new Fraction();
		pixelAspectRatioIn = new Fraction();
		
		videoScale = ElementFactory.make("videoscale", "smart-videoScale");
		//# set the scaling method to bilinear (cleaner)
		//# FIXME : we should figure out if better methods are available in the
		//# future, or ask the user which method he wants to use
		//# FIXME : Instead of having the set_caps() method, use proper caps negotiation
		videoScale.setProperty("method", 1 );//1 = bilinear
		
		videoBox = ElementFactory.make("videobox", "smart-videoBox");
		capsFilter = ElementFactory.make("capsfilter", "smart-capsFilter");
		
		add( videoScale );
		add( capsFilter );
		add( videoBox );
		
		videoScale.link( capsFilter );
		capsFilter.link( videoBox );
		
		sinkPad = new GhostPad( "sink", videoScale.getPad("sink") );
		sinkPad.setActive(true);
		srcPad = new GhostPad( "src", videoBox.getPad("src") );
		srcPad.setActive(true);
		
		addPad( sinkPad );
		addPad( srcPad );
		
		sinkPad.setSetcapsFunction( &sinkSetCapsCb );
		//sinkPad.setSetCapsFunction( sinkSetCaps );//TODO how on earth?
		//IGNORE FOR NOW: public typedef extern(C) int  function (GstPad*, GstCaps*) GstPadSetCapsFunction;
		//extern(C) static int callBackSetCaps(GstPad* pad, GstCaps* caps)
		//{
		//}
		
		/+
		
	//FROM gstreamer/Pad.d:
	/**
	*	Notice the spelling differences compared to above method. :)
	*/
	public void setSetCapsFunction( int delegate(Caps) dlg )
	{
		onSetSetCapsListener = dlg;
		gst_pad_set_setcaps_function( gstPad, callBackSetSetCaps );
	}
	
	int delegate(Caps) onSetSetCapsListener;
	
	//IGNORE FOR NOW: public typedef extern(C) int  function (GstPad*, GstCaps*) GstPadSetCapsFunction;
	extern(C) static int callBackSetSetCaps(GstPad* pad, GstCaps* caps)
	{
		
	}+/
	}
	
	void setCaps( Caps set )
	{
		getValuesFromCaps( set, widthOut, heightOut, pixelAspectRatioOut, displayAspectRatioOut, true );
	}
	
	bool sinkSetCaps( Pad unused_pad, Caps caps )
	{
		Stdout("SmartVideoScale.sinkSetCaps() START.").newline;
		scope(exit) Stdout("SmartVideoScale.sinkSetCaps() END.").newline;
	
		getValuesFromCaps( caps, widthIn, heightIn, pixelAspectRatioIn, displayAspectRatioIn );
		computeAndSetValues();
		bool res = cast(bool) videoScale.getPad("sink").setCaps( caps );
		return res;
	}
	
	bool srcSetCaps( Pad unused_pad, Caps caps )
	{
		getValuesFromCaps( caps, widthOut, heightOut, pixelAspectRatioOut, displayAspectRatioOut );
		bool res = cast(bool) videoBox.getPad("src").setCaps( caps );
		if( res == true )
		{
			capsOut = caps;
			computeAndSetValues();
		}
		return res;
	}
	
	//TODO? sinkPadCapsNotifyCb( Pad pad, ...
	//TODO? srcPadCapsNotifyCb( Pad pad, ...
	
	void getValuesFromCaps( Caps caps, out int res_wid, out int res_hei, out Fraction res_par, out Fraction res_dar, bool force = false )
	{
		int wid = -1;
		int hei = -1;
		//int[2]
		Fraction par = new Fraction(1,1);
		//int[2] dar = [1,1];
		Fraction dar = new Fraction(1,1);
		if( force == true || ( caps !is null && caps.isFixed() == true ) )
		{
			Structure struc = caps.getStructure(0);
			struc.getInt( "width", &wid );
			struc.getInt( "height", &hei );
			if( struc.hasField("pixel-aspect-ratio") == true )
			{
				struc.getFraction( "pixel-aspect-ratio", &par.num, &par.denom );
			}
			dar.set( wid * par.num, hei * par.denom );
		}
		res_wid = wid;
		res_hei = hei;
		res_par = par;
		res_dar = dar;
		
		Stdout("width: ")(res_wid).newline;
		Stdout("height: ")(res_hei).newline;
		Stdout("pixel aspectratio: ")(res_par).newline;
		Stdout("display aspectratio: ")(res_dar).newline;
	}
	
	/**
	* Calculate the new values to set on capsfilter and videobox.
	*/
	void computeAndSetValues()
	{
		if( widthIn == -1 || heightIn == -1 || widthOut == -1 || heightOut == -1 )
		{
			// FIXME : should we reset videobox/capsfilter properties here ?
			Stdout("SmartVideoScale.computeAndSetValues() Error: We don't have input and output caps, we can't calculate videobox values.").newline;
			return;
		}
		
		Caps caps;
		int left, right, top, bottom;
		//int[2] par;
		//int[2] dar;
		Fraction par = new Fraction(1,1);
		Fraction dar = new Fraction(1,1);
		char[] astr;
		
		if( displayAspectRatioIn == displayAspectRatioOut )
		{
			caps = Caps.newAny();
		}
		else
		{
			par = pixelAspectRatioOut;
			dar = displayAspectRatioIn;
			if( displayAspectRatioIn.toFloat() > displayAspectRatioOut.toFloat() )
			{
				Stdout("incoming DAR is greater that ougoing DAR. Adding top/bottom borders.").newline;
				// width, PAR stays the same as output
				// calculate newheight = (PAR * widthout) / DAR
				int newheight = cast(int)( cast(double)(par.num * widthOut * dar.denom) / cast(double)(par.denom * dar.num) );
				Stdout("newheight should be:")( newheight ).newline;
				int extra = heightOut - newheight;
				top = extra / 2;
				bottom = extra - top; //compensate for odd extra
				left = 0;
				right = 0;
				//calculate filter caps
				astr = "width=" ~ Integer.toUtf8(widthOut) ~ ",height=" ~ Integer.toUtf8(newheight);
			}
			else
			{
				Stdout("incoming DAR is smaller than outgoing DAR. Adding left/right borders.").newline;
				// height, PAR stays the same as output
				// calculate newwidth = (DAR * heightout) / PAR
				int newwidth = cast(int)( cast(double)(dar.num * heightOut * par.denom) / cast(double)(dar.denom * par.num) );
				Stdout("newwidth should be: ")( newwidth ).newline;
				int extra = widthOut - newwidth;
				left = extra / 2;
				right = extra - left; // compensate for odd extra
				top = 0;
				bottom = 0;
				// calculate filter caps
				astr = "width=" ~ Integer.toUtf8(newwidth) ~ ",height=" ~ Integer.toUtf8(heightOut);
			}
			
			caps = Caps.fromString("video/x-raw-yuv," ~ astr ~ ";video/x-raw-rgb," ~ astr );
		}
		
		// set properties on elements
		Stdout("About to set left/right/top/bottom : ")(-left)(" / ")(-right)(" / ")(-top)(" / ")(-bottom).newline;
        videoBox.setProperty( "left", -left );
        videoBox.setProperty( "right", -right );
        videoBox.setProperty( "top", -top );
        videoBox.setProperty( "bottom", -bottom );
        //self.debug("Settings filter caps %s" % caps.to_string())
        capsFilter.caps = caps;
        //self.debug("done")
		
	}
	
	
	
//Properties:
protected:
	
	Pad sinkPad;
	Pad srcPad;
	
	public Element videoScale() { return m_videoScale; }
	protected Element videoScale( Element set ) { return m_videoScale = set; }
	protected Element m_videoScale;
	
	public Element videoBox() { return m_videoBox; }
	protected Element videoBox( Element set ) { return m_videoBox = set; }
	protected Element m_videoBox;
	
	public Element capsFilter() { return m_capsFilter; }
	protected Element capsFilter( Element set ) { return m_capsFilter = set; }
	protected Element m_capsFilter;
	
	Caps capsIn;
	int widthIn = -1;
	int heightIn = -1;
	//int[2] 
	Fraction pixelAspectRatioIn;// = [1,1]; //Gst.Fraction
	//int[2]
	Fraction displayAspectRatioIn;// = [1,1]; //Gst.Fraction
	Caps capsOut;
	int widthOut = -1;
	int heightOut = -1;
	//int[2] 
	Fraction pixelAspectRatioOut;// = [1,1]; //Gst.Fraction
	//int[2] 
	Fraction displayAspectRatioOut;// = [1,1]; //Gst.Fraction
}

