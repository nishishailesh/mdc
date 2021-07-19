#!/bin/bash
#only blank
echo mysql user:
read uuu
echo mysql password:
read ppp
mysqldump  -d -u$uuu mdc -p$ppp > mdc_blank.sql
for tname in examination profile report
do
	mysqldump  -uroot dc_general $tname -p$ppp > "mdc_$tname.sql"
done
git add *
git commit
git push https://github.com/nishishailesh/mdc master
