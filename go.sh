#!/bin/bash

if hash elixir 2>/dev/null; then
    elixir letter_diamond.exs $*
else
    echo "You need Elixir installed to run this program."
    exit 1
fi

