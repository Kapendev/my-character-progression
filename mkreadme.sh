#!/bin/env sh

n=18

echo "# My cool MC art progression" > README.md
count=0
while [ ! $count = $n ]; do
	printf "\n![$count]($count.png)\n" >> README.md
	count=$(expr $count + 1)
done
printf "\n![$count]($count.gif)" >> README.md
