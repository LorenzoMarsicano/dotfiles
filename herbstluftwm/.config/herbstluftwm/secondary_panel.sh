#/home/syrinxos/.screenlayout/Zerynth.sh
herbstclient detect_monitors

herbstclient pad 1 34 1 1 1
SEC=$(ps aux | grep "polybar secondary" | grep -v grep | awk '{print $2}')
kill $SEC
polybar secondary &
