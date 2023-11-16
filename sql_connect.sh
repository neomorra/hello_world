#!/bin/bash
CLIENT=$(grep -e '^[[:alnum:]]' $TNS_ADMIN/tnsnames.ora|cut -d" " -f1|fzf)
if [[ "A$CLIENT" != "A" ]]; then
    tmux new-window -n "SQL $CLIENT" "sql magia/magia@$CLIENT";
fi
