#!/bin/bash
md5sum bin/demo.bin | gawk -f _props.awk >props.cfg
