to ?= something

rename:
	for a in $(shell git grep 'hanbaik[i]' | cut -d: -f1 | sort -u); do perl -pe "s{hanbaik[i]}{$(to)}g" -i $$a; done
