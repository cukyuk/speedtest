# speedtest
script to provide speed test result in a usable format for your ISP

old format
```
2020-02-19_00:30 speedtest.sh Hosted by Broadband 4 the Rural North (Lancaster) [58.42 km]: 37.588 ms   Download: 185.60 Mbit/s Upload: 35.21 Mbit/s servernumber 9370
2020-02-19_00:35 speedtest.sh Hosted by FAELIX (Manchester) [58.42 km]: 50.565 ms       Download: 86.42 Mbit/s  Upload: 34.19 Mbit/s servernumber 20746
2020-02-19_00:36 speedtest.sh Hosted by Vispa (Manchester) [58.42 km]: 44.817 ms        Download: 84.70 Mbit/s  Upload: 34.77 Mbit/s servernumber 11747
```
new format
```

2020-02-20_00:45 speedtest.sh ping  43.639 ms Download: 180.55 Mbit/s Upload: 36.80 Mbit/s  servernumber 28430 Hosted by Internet Central Limited (Keele) [52.87 km]: 43.639 ms
2020-02-20_00:50 speedtest.sh ping  58.929 ms Download: 241.92 Mbit/s   servernumber 9229 Hosted by BT Lancashire Services (Preston) [55.71 km]: 58.929 ms
2020-02-20_00:55 speedtest.sh ping  32.743 ms Download: 270.27 Mbit/s Upload: 37.11 Mbit/s  servernumber 16501 Hosted by Internet Connections Ltd (Leek) [73.50 km]: 32.743 ms
2020-02-20_01:00 speedtest.sh ping  37.834 ms Download: 262.13 Mbit/s Upload: 37.07 Mbit/s  servernumber 22971 Hosted by Exascale Limited (Telford) [74.29 km]: 37.834 ms
2020-02-20_01:05 speedtest.sh ping  35.339 ms Download: 135.26 Mbit/s Upload: 36.87 Mbit/s  servernumber 7265 Hosted by Unitron Systems & Development Ltd (Telford) [74.43 km]: 35.339 ms
2020-02-20_01:10 speedtest.sh ping  37.392 ms Download: 226.76 Mbit/s Upload: 37.05 Mbit/s  servernumber 15553 Hosted by Linix Ltd (Liverpool) [14.24 km]: 37.392 ms
2020-02-20_01:15 speedtest.sh ping  34.757 ms Download: 291.29 Mbit/s Upload: 36.85 Mbit/s  servernumber 18590 Hosted by Baltic Broadband Limited (Liverpool) [14.24 km]: 34.757 ms
2020-02-20_01:20 speedtest.sh ping  37.718 ms Download: 184.22 Mbit/s Upload: 37.26 Mbit/s  servernumber 30467 Hosted by Next Vision Telecommunications (Liverpool) [14.24 km]: 37.718 ms
2020-02-20_01:25 speedtest.sh ping  34.494 ms Download: 260.22 Mbit/s Upload: 36.96 Mbit/s  servernumber 23968 Hosted by Vodafone UK (Manchester) [51.16 km]: 34.494 ms
2020-02-20_01:30 speedtest.sh ping  35.935 ms Download: 179.25 Mbit/s Upload: 36.77 Mbit/s  servernumber 9370 Hosted by Broadband 4 the Rural North (Lancaster) [51.27 km]: 35.935 ms
2020-02-20_01:35 speedtest.sh ping  20.899 ms Download: 132.69 Mbit/s Upload: 36.79 Mbit/s  servernumber 20746 Hosted by FAELIX (Manchester) [51.27 km]: 20.899 ms
2020-02-20_01:40 speedtest.sh ping  33.229 ms Download: 19.67 Mbit/s Upload: 36.60 Mbit/s  servernumber 11747 Hosted by Vispa (Manchester) [51.27 km]: 33.229 ms
2020-02-20_01:45 speedtest.sh ping  28.326 ms Download: 228.67 Mbit/s Upload: 37.12 Mbit/s  servernumber 24734 Hosted by Grain Connect (Manchester) [51.27 km]: 28.326 ms
2020-02-20_01:50 speedtest.sh ping  37.293 ms Download: 195.67 Mbit/s Upload: 17.98 Mbit/s  servernumber 3504 Hosted by TNP Ltd. (Manchester) [51.27 km]: 37.293 ms
2020-02-20_01:51 speedtest.sh ping  39.169 ms Download: 264.95 Mbit/s Upload: 37.00 Mbit/s  servernumber 21221 Hosted by FibreNest (Manchester) [51.27 km]: 39.169 ms
2020-02-20_01:55 speedtest.sh ping  37.999 ms Download: 232.82 Mbit/s Upload: 36.87 Mbit/s  servernumber 2262 Hosted by Boundless Networks (Manchester) [51.27 km]: 37.999 ms

```
Changes to original RAW format of the output to make is quicker to parse with spreadsheet tools
