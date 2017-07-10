[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec pulseaudio & 
exec i3 
