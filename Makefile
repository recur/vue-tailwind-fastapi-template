to ?= something

rename:
	for a in $(shell git grep 'excalibrato[r]' | cut -d: -f1 | sort -u); do perl -pe "s{excalibrato[r]}{$(to)}g" -i $$a; done
