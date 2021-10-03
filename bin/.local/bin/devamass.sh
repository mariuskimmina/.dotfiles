#!/bin/bash

SESSION="amass"

tmux has-session -t $SESSION
if [ $? -eq 0 ]; then
    echo "Session $SESSION already exists. Attaching..."
    sleep 1
    tmux -2 attach -t $SESSION
    exit 0;
fi

tmux new-session -d -s $SESSION 

tmux rename-window -t 1 'Main'

tmux new-windo -t $SESSION:2 -n 'Testdingo'
