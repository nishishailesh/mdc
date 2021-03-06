#!/bin/bash
#only blank
read ppp
mysqldump  -d -uroot mdc -p$ppp > mdc_blank.sql
for tname in examination profile report
do
	mysqldump  -uroot dc_general $tname -p$ppp > "mdc_$tname.sql"
done
git add *
git commit
git push https://github.com/nishishailesh/mdc master
