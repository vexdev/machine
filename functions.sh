#!/bin/bash 
function prmas {
	stash pull-request master @victor.ivascu @hans.vanwesenbeeck @ciprian.ursu @iliyan.ivanov @ljubisa.stankovic @patryk.zabicki @danail.alexiev
}
function prrel {
	echo "Enter the version of the release branch (release/xxxxx)"
	read branch
	stash pull-request release/$branch @victor.ivascu @hans.vanwesenbeeck @ciprian.ursu @iliyan.ivanov @ljubisa.stankovic @patryk.zabicki @danail.alexiev
}
function screenshot {
	adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png
	open screen.png
}
