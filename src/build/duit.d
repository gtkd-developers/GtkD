/*
 * Automatically generated build imports from
 * the initial version generouselly given by:
 * John Reimer
 */

module build;

version( build )
{
	pragma (nolink);

	version (Windows)     pragma (target, "Duit.lib"  );
	version (linux)   pragma (target, "libDuit.a" );
}



private import gdkpixbuf.Pixdata;
private import gdkpixbuf.PixbufAnimation;
private import gdkpixbuf.PixbufLoader;

private import glgdk.GLdInit;
private import glgdk.GLQuery;
private import glgdk.GLConfig;
private import glgdk.GLContext;
private import glgdk.GLDrawable;
private import glgdk.GLPixmap;
private import glgdk.GLWindow;
private import glgdk.GLFont;
private import glgdk.GLDraw;
private import glgdk.GLTokens;
private import glgdk.GLdVersion;

private import glgtk.GLtInit;
private import glgtk.GLWidget;
private import glgtk.GLtVersion;
private import glgtk.GLCapability;

private import lib.paths.d;
private import lib.Loader.d;
private import lib.gdkpixbuf;
private import lib.glgdk;
private import lib.glgtk;
