#!/bin/bash

# If no tmux session is running, start one
if [ -z "$TMUX" ]; then
  tmux attach || tmux new
fi
