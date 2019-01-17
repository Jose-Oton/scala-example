#! /bin/bash
#Download archive
echo '*******Download Archive from s3*******'
wget  http://samplecsvs.s3.amazonaws.com/Sacramentorealestatetransactions.csv && pip install pandas && python formatDoc.py
#number of lines
echo '*******Number of lines from archive*******'
wc -l Sacramentorealestatetransactions.csv
#firts 10 lines
echo '*******First 10 lines*******'
head -n 10 Sacramentorealestatetransactions.csv
#last 10 lines
echo '*******Last 10 lines*******'
tail -n 10 Sacramentorealestatetransactions.csv
#filter Multi-Family
echo '********Filter Multi-Family**********'
grep Multi-Family Sacramentorealestatetransactions.csv
