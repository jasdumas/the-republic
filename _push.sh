#!/bin/sh

# info: https://github.com/SustainSB/sustainsb.github.io/issues/2
export GH_OWNER=jasdumas
export GH_REPO=the-republic
export GH_BRANCH=master

# setup git
git config --global user.email "jasmine.dumas@gmail.com"
git config --global user.name "jasdumas"
git config --global push.default matching

# git commit
git checkout ${GH_BRANCH}
git add --all
git commit -am "Travis $TRAVIS_EVENT_TYPE [skip ci]: build $TRAVIS_BUILD_NUMBER"

# git push
git remote add upstream "https://${GH_TOKEN}@github.com/${GH_OWNER}/${GH_REPO}.git"
git push -q upstream ${GH_BRANCH}