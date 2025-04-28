#!/usr/bin/env bash

curl -o "v606vul_ztf_photometry.csv" "https://ztf.snad.space/dr23/csv/1685207200024460?other_oid=641316100106186&other_oid=641116100063310&other_oid=641216100035134&min_mjd=50000&max_mjd=70000"
if [ $? -ne 0 ];then
 echo "ERROR downlaoding the data"
 exit 1
fi

cat "v606vul_ztf_photometry.csv" | grep ',zr,' | awk -F',' '{if( $3 < 59410.384)print $3" "$4" "$5}' > v606vul_ztf_r_preeruption.txt
cat "v606vul_ztf_photometry.csv" | grep ',zr,' | awk -F',' '{if( $3 > 59670.470)print $3" "$4" "$5}' > v606vul_ztf_r_postdustdip.txt


