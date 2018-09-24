DEVS="@tunji.olu-taiwo @branimir.conjar @dorin.drimus @jose.mora @yaroslav.mytkalyk @ljubisa.stankovic @domenico.cerasuolo @leszek.mzyk @christian.reinhold"

function prmas {
	eval stash pull-request master $DEVS 
}

function prrel {
	echo "Enter the version of the release branch (release/xxxxx)"
	read branch
	eval stash pull-request release/$branch $DEVS
}

function screenshot {
	adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png
	open screen.png
}

function droptag {
  git tag -d $1
  git push origin :refs/tags/$1
}
