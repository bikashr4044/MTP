#!/bin/bash
sed "s/ipwps/$1/" plotgrids_new.ncl > temp.ncl
sed -i "s/opimg/$2/" temp.ncl
if [ $# -gt 2 ]; then
	sed -i "s/headhd/$3/" temp.ncl
fi

ncl temp.ncl
rm temp.ncl
