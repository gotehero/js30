#!/bin/sh

out=out
src=src

rm -rf out
git worktree add $out gh-pages

./generate.sh

cd $out &&
    git add --all &&
    git commit -m 'deploy' &&
    git push origin gh-pages

cd ..
git worktree remove $out


