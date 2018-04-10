@echo off
md5sum supervcsboy.bin | gawk -f _props.awk >props.cfg
