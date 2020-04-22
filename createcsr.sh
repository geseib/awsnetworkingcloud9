#! /bin/bash
# syntax is
# ./createcsr.sh 1.1.1.1 2.2.2.2 65000 configfile
# ./createcsr.sh awsEndpoint1 awsEndpoint2 localASN remote ASN outputfile_name 
sed "s/tun1address/$1/g" csrtemplate.txt > $5
sed -i "s/tun2address/$2/g" $5
sed -i "s/localasn/$3/g" $5
sed -i "s/peerasn/$4/g" $5
