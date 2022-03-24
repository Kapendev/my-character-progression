#!/bin/env sh

n=19

echo '# My cool MC art progression' > README.md
printf "\n![$n](art/$n.gif)\n" >> README.md
printf "\n> We don't make mistakes, just happy little accidents. (Bob Ross , The Joy of Painting)\n" >> README.md

count=0
while [ ! $count = $n ]; do
	printf "\n## Frame $count\n" >> README.md
	printf "\n![$count](art/$count.png)\n" >> README.md
	count=$(expr $count + 1)
done
