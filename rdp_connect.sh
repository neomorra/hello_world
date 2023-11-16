#!/bin/bash
CLIENT=$(ls -1 ~/.local/share/remmina|cut -d" " -f1|fzf)
if [[ "A$CLIENT" != "A" ]]; then
    remmina -c $CLIENT;
fi
