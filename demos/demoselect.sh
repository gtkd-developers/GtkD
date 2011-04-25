#!/bin/sh

#Lil' helper script to select which demos get built.
#May the lord forgive our sins.

DEMOSCONF="dsss.conf"

#Reformat dsss.conf to keep at least one blank line between sections.
sed -i -e '/^.*$/ { N; s/\n\[/\n&/ }' "${DEMOSCONF}"

#Now enable/disable the selected sections.
for param in "$@"; do
    case "${param}" in
        disable-all|only) sed -i -e '/^\[.*/ { s/^./#&/; :a; n; s/^./#&/; t a; }' "${DEMOSCONF}";;
        gtk) sed -i -re '/^#\[(builder|cairo|gtk|gtkD|pango)\]/ { s/#//; :a; n; s/#//; t a; }' "${DEMOSCONF}";;
        gda) sed -i -re '/^#\[gda\]/ { s/#//; :a; n; s/#//; t a; }' "${DEMOSCONF}";;
        sv) sed -i -re '/^#\[sourceView\]/ { s/#//; :a; n; s/#//; t a; }' "${DEMOSCONF}";;
        gl) sed -i -re '/^#\[gl\]/ { s/#//; :a; n; s/#//; t a; }' "${DEMOSCONF}";;
        gst) sed -i -re '/^#\[gstreamer\]/ { s/#//; :a; n; s/#//; t a; }' "${DEMOSCONF}";;
    esac
done

#Err.. it seems something keeps adding blank lines.
#Debug what's on top if you want to remove the following =)
sed -i -e '/^$/ { N; /\n$/ D; }' "${DEMOSCONF}"

