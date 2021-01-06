/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
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

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module gstreamer.Parse;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Bin;
private import gstreamer.Element;
private import gstreamer.ParseContext;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/** */
public struct Parse
{

	/**
	 * This is a convenience wrapper around gst_parse_launch() to create a
	 * #GstBin from a gst-launch-style pipeline description. See
	 * gst_parse_launch() and the gst-launch man page for details about the
	 * syntax. Ghost pads on the bin for unlinked source or sink pads
	 * within the bin can automatically be created (but only a maximum of
	 * one ghost pad for each direction will be created; if you expect
	 * multiple unlinked source pads or multiple unlinked sink pads
	 * and want them all ghosted, you will have to create the ghost pads
	 * yourself).
	 *
	 * Params:
	 *     binDescription = command line describing the bin
	 *     ghostUnlinkedPads = whether to automatically create ghost pads
	 *         for unlinked source or sink pads within the bin
	 *
	 * Returns: a
	 *     newly-created bin, or %NULL if an error occurred.
	 *
	 * Throws: GException on failure.
	 */
	public static Bin binFromDescription(string binDescription, bool ghostUnlinkedPads)
	{
		GError* err = null;

		auto __p = gst_parse_bin_from_description(Str.toStringz(binDescription), ghostUnlinkedPads, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Bin)(cast(GstBin*) __p);
	}

	/**
	 * This is a convenience wrapper around gst_parse_launch() to create a
	 * #GstBin from a gst-launch-style pipeline description. See
	 * gst_parse_launch() and the gst-launch man page for details about the
	 * syntax. Ghost pads on the bin for unlinked source or sink pads
	 * within the bin can automatically be created (but only a maximum of
	 * one ghost pad for each direction will be created; if you expect
	 * multiple unlinked source pads or multiple unlinked sink pads
	 * and want them all ghosted, you will have to create the ghost pads
	 * yourself).
	 *
	 * Params:
	 *     binDescription = command line describing the bin
	 *     ghostUnlinkedPads = whether to automatically create ghost pads
	 *         for unlinked source or sink pads within the bin
	 *     context = a parse context allocated with
	 *         gst_parse_context_new(), or %NULL
	 *     flags = parsing options, or #GST_PARSE_FLAG_NONE
	 *
	 * Returns: a newly-created
	 *     element, which is guaranteed to be a bin unless
	 *     #GST_PARSE_FLAG_NO_SINGLE_ELEMENT_BINS was passed, or %NULL if an error
	 *     occurred.
	 *
	 * Throws: GException on failure.
	 */
	public static Element binFromDescriptionFull(string binDescription, bool ghostUnlinkedPads, ParseContext context, GstParseFlags flags)
	{
		GError* err = null;

		auto __p = gst_parse_bin_from_description_full(Str.toStringz(binDescription), ghostUnlinkedPads, (context is null) ? null : context.getParseContextStruct(), flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Element)(cast(GstElement*) __p);
	}

	/**
	 * Get the error quark used by the parsing subsystem.
	 *
	 * Returns: the quark of the parse errors.
	 */
	public static GQuark errorQuark()
	{
		return gst_parse_error_quark();
	}

	/**
	 * Create a new pipeline based on command line syntax.
	 * Please note that you might get a return value that is not %NULL even though
	 * the @error is set. In this case there was a recoverable parsing error and you
	 * can try to play the pipeline.
	 *
	 * To create a sub-pipeline (bin) for embedding into an existing pipeline
	 * use gst_parse_bin_from_description().
	 *
	 * Params:
	 *     pipelineDescription = the command line describing the pipeline
	 *
	 * Returns: a new element on success, %NULL on
	 *     failure. If more than one toplevel element is specified by the
	 *     @pipeline_description, all elements are put into a #GstPipeline, which
	 *     than is returned.
	 *
	 * Throws: GException on failure.
	 */
	public static Element launch(string pipelineDescription)
	{
		GError* err = null;

		auto __p = gst_parse_launch(Str.toStringz(pipelineDescription), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Element)(cast(GstElement*) __p);
	}

	/**
	 * Create a new pipeline based on command line syntax.
	 * Please note that you might get a return value that is not %NULL even though
	 * the @error is set. In this case there was a recoverable parsing error and you
	 * can try to play the pipeline.
	 *
	 * To create a sub-pipeline (bin) for embedding into an existing pipeline
	 * use gst_parse_bin_from_description_full().
	 *
	 * Params:
	 *     pipelineDescription = the command line describing the pipeline
	 *     context = a parse context allocated with
	 *         gst_parse_context_new(), or %NULL
	 *     flags = parsing options, or #GST_PARSE_FLAG_NONE
	 *
	 * Returns: a new element on success, %NULL on
	 *     failure. If more than one toplevel element is specified by the
	 *     @pipeline_description, all elements are put into a #GstPipeline, which
	 *     then is returned (unless the GST_PARSE_FLAG_PLACE_IN_BIN flag is set, in
	 *     which case they are put in a #GstBin instead).
	 *
	 * Throws: GException on failure.
	 */
	public static Element launchFull(string pipelineDescription, ParseContext context, GstParseFlags flags)
	{
		GError* err = null;

		auto __p = gst_parse_launch_full(Str.toStringz(pipelineDescription), (context is null) ? null : context.getParseContextStruct(), flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Element)(cast(GstElement*) __p);
	}

	/**
	 * Create a new element based on command line syntax.
	 * @error will contain an error message if an erroneous pipeline is specified.
	 * An error does not mean that the pipeline could not be constructed.
	 *
	 * Params:
	 *     argv = null-terminated array of arguments
	 *
	 * Returns: a new element on success and %NULL
	 *     on failure.
	 *
	 * Throws: GException on failure.
	 */
	public static Element launchv(string[] argv)
	{
		GError* err = null;

		auto __p = gst_parse_launchv(Str.toStringzArray(argv), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Element)(cast(GstElement*) __p);
	}

	/**
	 * Create a new element based on command line syntax.
	 * @error will contain an error message if an erroneous pipeline is specified.
	 * An error does not mean that the pipeline could not be constructed.
	 *
	 * Params:
	 *     argv = null-terminated array of arguments
	 *     context = a parse context allocated with
	 *         gst_parse_context_new(), or %NULL
	 *     flags = parsing options, or #GST_PARSE_FLAG_NONE
	 *
	 * Returns: a new element on success; on
	 *     failure, either %NULL or a partially-constructed bin or element will be
	 *     returned and @error will be set (unless you passed
	 *     #GST_PARSE_FLAG_FATAL_ERRORS in @flags, then %NULL will always be returned
	 *     on failure)
	 *
	 * Throws: GException on failure.
	 */
	public static Element launchvFull(string[] argv, ParseContext context, GstParseFlags flags)
	{
		GError* err = null;

		auto __p = gst_parse_launchv_full(Str.toStringzArray(argv), (context is null) ? null : context.getParseContextStruct(), flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Element)(cast(GstElement*) __p);
	}
}
