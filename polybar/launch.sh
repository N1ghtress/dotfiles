#! /bin/bash

DIR="$HOME/.config/polybar"

error () {
	cat <<- EOF
	Usage : launch.sh [theme]
	themes:
		rounded
		blocks
	EOF
	exit 0
}

# Launch the bar
launch-bar () {
	# Terminate already running bar instances
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

	# polybar --reload kn1ghtbar -c "$DIR"/"$style"/config.ini &
	polybar --reload kn1ghtbar -c "$DIR"/config.ini &
}

style=$1
launch-bar style
