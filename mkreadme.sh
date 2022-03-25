#!/bin/env sh

# The script works only if imagemagick is installed
# It will try to create a gif from all the png files in the art directory

# Art directory files:
# [0, n-1].png
# n.gif

n=$(echo art/*.png | wc -w)
$(cd art; convert -delay 25 -loop 0 -dispose previous $(echo *.png | tr ' ' '\n' | sort -n) $n.gif)

echo '# My cool MC art progression' > README.md
printf "\n![$n](art/$n.gif)\n" >> README.md
printf "\n> We don't make mistakes, just happy little accidents. (Bob Ross , The Joy of Painting)\n" >> README.md
printf "\nIt is recommended to listen to [this song](https://youtu.be/Q5gfyKYMq6g) when watching the evolution of the art.\n" >> README.md

count=0
while [ ! $count = $n ]; do
	printf "\n## Frame $count\n" >> README.md
	printf "\n![$count](art/$count.png)\n" >> README.md
	count=$(expr $count + 1)
done
