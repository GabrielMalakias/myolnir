# This file should be small and composed by loading other files with a specific purpose

if [ -n "$DOTFILE_HOME" ]; then
  for DOTFILE in `find $DOTFILE_HOME`
  do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
  done
fi

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

