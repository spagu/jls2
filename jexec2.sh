#!/bin/csh
set D=`jexec $1 pw usershow root | awk -F":" '{print $10}'`
set O=`pw usershow root | awk -F":" '{print $10}'`
setenv SHELL ${D}
jexec $*
setenv SHELL ${O}
