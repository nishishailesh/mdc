#!/bin/bash
#only blank
echo mysql user:
read uuu
echo mysql password:
read ppp
mysqldump  -h127.0.0.1 -d -u$uuu mdc -p$ppp > mdc_blank.sql
for tname in examination profile report
do
	mysqldump  -h127.0.0.1 -u$uuu mdc $tname -p$ppp > "mdc_$tname.sql"
done
git add *
git commit
git push https://github.com/nishishailesh/mdc master
