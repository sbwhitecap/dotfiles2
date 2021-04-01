#!/bin/sh
# vim:set ts=2 sw=2 et:

SD=/usr/share/skk/SKK-JISYO

skkdic-expr2 $SD.L \
           + $SD.jinmei \
           + $SD.fullname \
           + $SD.geo \
           + $SD.propernoun \
           + $SD.station \
           + $SD.law \
           + $SD.assoc \
           + $SD.itaiji \
           + $SD.itaiji.JIS3_4
#| ruby -rnkf -e 'print NKF.nkf("-w", $stdin.read)'
