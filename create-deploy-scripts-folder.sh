#!/bin/bash

base="$PWD"
solutionRoot="$base"
deployScriptsFolder="deploy-scripts"

if [ -d "$deployScriptsFolder" ]; then rm -Rf $deployScriptsFolder; fi

mkdir "$deployScriptsFolder"

cd $solutionRoot/
ls -la

cp $solutionRoot/*.sh ./$deployScriptsFolder

