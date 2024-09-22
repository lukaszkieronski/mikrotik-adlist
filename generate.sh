#!/bin/bash

mkdir -p ./data

rm data/*

wget -O - https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts >> data/raw
wget -O - https://raw.githubusercontent.com/MajkiIT/polish-ads-filter/master/polish-pihole-filters/hostfile.txt >> data/raw
wget -O - https://raw.githubusercontent.com/MajkiIT/polish-ads-filter/master/polish-pihole-filters/Ad_filter_list_by_Disconnect.txt >> data/raw
wget -O - https://raw.githubusercontent.com/MajkiIT/polish-ads-filter/master/polish-pihole-filters/NoTrack_Tracker_Blocklist.txt >> data/raw

grep "^0\.0\.0\.0" data/raw | sort | uniq >> data/hosts

rm data/raw