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

module utils.GlibTypes;

enum string[string] glibTypes = [
	"volatile": "",
	"G_CONST_RETURN": "",
	"gint": "int",
	"guint": "uint",
	"gboolean": "bool",
	"gpointer": "void*",
	"gconstpointer": "void*",
	"gchar": "char",
	"guchar": "char",
	"gshort": "short",
	"gushort": "ushort",
	"gint8": "byte",
	"guint8": "ubyte",
	"gint16": "short",
	"guint16": "ushort",
	"gint32": "int",
	"gint64": "long",
	"guint32": "uint",
	"guint64": "ulong",
	"guintptr": "size_t",
	"gfloat": "float",
	"gdouble": "double",
	"goffset": "long",
	"gsize": "size_t",
	"gssize": "ptrdiff_t",
	"va_list": "void*",
	"unichar": "dchar",
	"unichar2": "wchar",
	"uchar": "ubyte",
	"XID": "uint",

	"gunichar": "dchar",
	"gunichar2": "wchar",

	"time_t": "uint",
	"uid_t": "uid_t",

	"alias": "alias_",
	"align": "alig",
	"body": "bod",
	"continue": "continu",
	"debug": "dbg",
	"default": "defaulx",
	"delete": "delet",
	"export": "expor",
	"foreach": "foreac",
	"function": "funct",
	"Function": "Funct",
	"in": "inn",
	"instance": "instanc",
	"interface": "iface",
	"module": "modul",
	"out": "output",
	"package": "p",
	"ref": "doref",
	"scope": "scop",
	"string": "str",
	"switch": "switc",
	"union": "unio",
	"version": "versio",

	"GLIB_SYSDEF_POLLIN": "=1",
	"GLIB_SYSDEF_POLLOUT": "=4",
	"GLIB_SYSDEF_POLLPRI": "=2",
	"GLIB_SYSDEF_POLLHUP": "=16",
	"GLIB_SYSDEF_POLLERR": "=8",
	"GLIB_SYSDEF_POLLNVAL": "=32",
];

