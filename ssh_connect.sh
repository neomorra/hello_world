#!/bin/bash
CLIENT=$(grep host ~/.ssh/config|cut -d" " -f2|fzf)
if [[ "A$CLIENT" != "A" ]]; then
    tmux new-window -n $CLIENT "ssh $CLIENT";
fi
