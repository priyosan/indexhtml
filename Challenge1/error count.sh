#!/bin/sh
tail -f sample_file.log > a.log
fCOUNT = grep ERROR a.log | wc -l
while (1)
do
iCOUNT= grep ERROR a.log | wc -l
COUNT=$(($fCOUNT -$iCOUNT))
if ($COUNT -eq 0) then
exit(1)
elif ($COUNT -le 5 ) then
echo "WARNING"
elif ($COUNT -gt 5) then
echo "ALERT"
fi
sleep 10
done
