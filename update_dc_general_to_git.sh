#!/bin/bash
if [ "$1" = "password" ]; then
	echo 'Give mysql password'
	read password
fi

if [ "$1" = "password" ]; then
	mysqldump  -d -uroot mdc -p$password > mdc_blank.sql
else
	#if unix plugin , as root
	mysqldump  -d mdc > mdc_blank.sql
fi

tnames='examination profile report'

if [ "$1" = "password" ]; then
	mysqldump  -uroot mdc $tnames -p$password > "mdc_data.sql"
else
	mysqldump  mdc $tnames > "mdc_data.sql"
fi

git add *
git commit -a
git push https://github.com/nishishailesh/mdc master


