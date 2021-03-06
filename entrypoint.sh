#!/bin/sh -l

cd $GITHUB_WORKSPACE/$INPUT_DIR && echo "$INPUT_COMMAND" && sh -c "$INPUT_COMMAND"