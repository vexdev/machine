DEVS="@ljubisa.stankovic @christian.reinhold @piotr.spyra @victor.ivascu @ciprian.ursu @patryk.zabicki"

function prmas {
	stash pull-request master $DEVS 
}

function prrel {
	echo "Enter the version of the release branch (release/xxxxx)"
	read branch
	stash pull-request release/$branch $DEVS
}

function screenshot {
	adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png
	open screen.png
}
