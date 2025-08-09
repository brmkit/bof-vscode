#!/bin/bash

# tested on debian arm
function getfunc {
    grep -R -i -w "$1" "/usr/x86_64-w64-mingw32/include/";
}
export -f getfunc
function boflib {
    x86_64-w64-mingw32-nm -g /usr/x86_64-w64-mingw32/lib/* --defined-only -A 2>/dev/null | grep "$1";
}
export -f boflib

# custom bash prompt
export PS1="\[\e[0;37m\]\u\[\e[0m\]\[\e[1;31m\]@\[\e[0m\]\[\e[0;37m\]\h\[\e[0m\]:\[\e[1;30m\]\w\[\e[0m\]\\$ "

# welcome message
echo -e "\n\033[1;36mBOF Development Container\033[0m"
echo -e "Remember to use:"
echo -e "  getfunc <APIFunction> – print the API stub definition"
echo -e "  boflib <APIFunction>  – search for the function's library"
