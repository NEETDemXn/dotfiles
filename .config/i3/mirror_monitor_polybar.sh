if type "xrandr"; then
	for m in $(polybar --list-monitors | cut -d":" -f1); do
		MONITOR=$m polybar --reload NEET &
	done
else
	polybar --reload example &
fi
