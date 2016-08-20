#!/bin/bash
basedir=$(realpath $1)
branch=$(git symbolic-ref --short HEAD)
cd $basedir
if [[ ! -e smartentry ]]; then
    git clone https://github.com/gaoyifan/smartentry.git smartentry
fi
cd smartentry
git fetch origin $branch
git reset --hard origin/$branch
commit_id=$(git rev-parse HEAD)
cd $basedir
find $basedir -mindepth 2 -maxdepth 2 -type d -not -path '*/.git/*' -not -path '*/smartentry/*' |
while read dir; do
    cp $basedir/smartentry/smartentry.sh $dir;
done
git commit -a -m $commit_id
