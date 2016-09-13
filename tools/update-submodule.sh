#!/bin/bash
set -x
basedir=$(realpath $1)
tag=${2:-"master"}
cd $basedir
if [[ ! -e smartentry ]]; then
    git clone https://github.com/gaoyifan/smartentry.git smartentry
fi
cd smartentry
git fetch origin $tag
commit_id=$(git rev-list -n 1 $tag)
git reset --hard $commit_id
cd $basedir
find $basedir -mindepth 2 -maxdepth 2 -type d -not -path '*/.git/*' -not -path '*/smartentry/*' |
while read dir; do
    cp $basedir/smartentry/smartentry.sh $dir;
done
git commit -a -m $commit_id
git tag $tag
