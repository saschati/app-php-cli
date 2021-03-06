#!/bin/sh -l

cd $GITHUB_WORKSPACE/$INPUT_DIR && composer install && $($INPUT_COMMAD)