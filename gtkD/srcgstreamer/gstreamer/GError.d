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
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gstreamer-GstGError.html
 * outPack = gstreamer
 * outFile = GError
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gstreamer.GError;

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;

private import glib.Str;



/**
 * Description
 * GStreamer elements can throw non-fatal warnings and fatal errors.
 * Higher-level elements and applications can programatically filter
 * the ones they are interested in or can recover from,
 * and have a default handler handle the rest of them.
 * The rest of this section will use the term error
 * to mean both (non-fatal) warnings and (fatal) errors; they are treated
 * similarly.
 * Errors from elements are the combination of a GError and a debug string.
 * The GError contains:
 * - a domain type: CORE, LIBRARY, RESOURCE or STREAM
 * - a code: an enum value specific to the domain
 * - a translated, human-readable message
 * - a non-translated additional debug string, which also contains
 * - file and line information
 * Elements do not have the context required to decide what to do with
 * errors. As such, they should only inform about errors, and stop their
 * processing. In short, an element doesn't know what it is being used for.
 * It is the application or compound element using the given element that
 * has more context about the use of the element. Errors can be received by
 * listening to the GstBus of the element/pipeline for GstMessage objects with
 * the type GST_MESSAGE_ERROR or GST_MESSAGE_WARNING. The thrown errors should
 * be inspected, and filtered if appropriate.
 * An application is expected to, by default, present the user with a
 * dialog box (or an equivalent) showing the error message. The dialog
 * should also allow a way to get at the additional debug information,
 * so the user can provide bug reporting information.
 * A compound element is expected to forward errors by default higher up
 * the hierarchy; this is done by default in the same way as for other types
 * of GstMessage.
 * When applications or compound elements trigger errors that they can
 * recover from, they can filter out these errors and take appropriate action.
 * For example, an application that gets an error from xvimagesink
 * that indicates all XVideo ports are taken, the application can attempt
 * to use another sink instead.
 * Elements throw errors using the GST_ELEMENT_ERROR convenience macro:
 * Example7.Throwing an error
 *  GST_ELEMENT_ERROR (src, RESOURCE, NOT_FOUND,
 *  (_("No file name specified for reading.")), (NULL));
 * Things to keep in mind:
 * Don't go off inventing new error codes. The ones
 *  currently provided should be enough. If you find your type of error
 *  does not fit the current codes, you should use FAILED.
 * Don't provide a message if the default one suffices.
 *  this keeps messages more uniform. Use (NULL) - not forgetting the
 *  parentheses.
 * If you do supply a custom message, it should be
 *  marked for translation. The message should start with a capital
 *  and end with a period. The message should describe the error in short,
 *  in a human-readable form, and without any complex technical terms.
 *  A user interface will present this message as the first thing a user
 *  sees. Details, technical info, ... should go in the debug string.
 * The debug string can be as you like. Again, use (NULL)
 *  if there's nothing to add - file and line number will still be
 *  passed. GST_ERROR_SYSTEM can be used as a shortcut to give
 *  debug information on a system call error.
 * Last reviewed on 2006-09-15 (0.10.10)
 */

/**
 */










/**
 * Get a string describing the error message in the current locale.
 * domain:
 *  the GStreamer error domain this error belongs to.
 * code:
 *  the error code belonging to the domain.
 * Returns:
 *  a newly allocated string describing the error message in the
 * current locale.
 * See Also
 * GstMessage
 */
public static char[] errorGetMessage(GQuark domain, int code)
{
	// gchar* gst_error_get_message (GQuark domain,  gint code);
	return Str.toString(gst_error_get_message(domain, code) );
}

