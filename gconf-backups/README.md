## Export
gconftool-2 --dump '/apps/gnome-terminal' > gnome-terminal-conf.xml

## Import
gconftool-2 --load gnome-terminal-conf.xml

