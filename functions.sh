function screenshot {
	adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png
	open screen.png
}

function droptag {
  git tag -d $1
  git push origin :refs/tags/$1
}

function stash {
  curl -s -u luca.vitucci:$(cat ~/.stash-token) https://stash.cwc.io/rest/api/1.0/repos\?limit\=1000 | jq -r ".values[].links.clone[] | select(.name==\"ssh\") | .href" | grep $1
}
