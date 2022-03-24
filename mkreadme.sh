#!/bin/env sh

n=18

echo "# My cool MC art progression" > README.md
printf "\n![$n]($n.gif)\n" >> README.md
count=0
while [ ! $count = $n ]; do
	printf "\n## Frame $count\n" >> README.md
	printf "\n![$count]($count.png)\n" >> README.md
	count=$(expr $count + 1)
done
