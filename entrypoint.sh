#!/bin/sh -l

cd $GITHUB_WORKSPACE/$INPUT_DIR && composer install && sh -c $INPUT_COMMAD