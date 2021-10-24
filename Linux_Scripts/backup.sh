#!/bin/bash

tar -cvvWf ~/home.tar /var/backup/home.tar

mv /var/backup/home.tar /var/backup/home/12232022.tar

ls -lh /var/backup >> /var/backup/file_report.txt

free -h /var/backup/disk_report.txt
