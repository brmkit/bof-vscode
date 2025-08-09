#!/bin/bash
# pass clean if you want to clean everything
cd src/
ls | while read dir; do
    if [[ -d $dir && ! $dir =~ ^_ ]]; then
        cd $dir
        if [[ -f "Makefile" ]]; then
            make $1 1>/dev/null
            echo "[+] $1 $dir"
        fi
        cd ..
    fi
done
cd ../
echo "done."