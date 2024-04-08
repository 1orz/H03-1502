#!/bin/bash
# This script will clear the all commit from the git history
git checkout --orphan temp_branch && \
git add . && \
git commit -am "Clear history commit" && \
git branch -D main && \
git branch -M main && \
git push --set-upstream origin main --force