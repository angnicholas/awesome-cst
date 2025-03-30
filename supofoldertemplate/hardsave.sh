#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"
yes | ./clean.sh
git add .
git commit -m "Save me"
git push