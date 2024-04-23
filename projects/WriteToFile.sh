#!/usr/bin/bash
du -ah | sort -hr |head -n 10 > dsk_util_data.txt;
echo "List of big files  in the file system";
cat dsk_util_data.txt;
