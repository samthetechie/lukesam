#!/bin/bash
git status && \
read -p "Commit description: " desc
git pull && \  #Always better to pull before push to resolve merge conflicts locally.
git add . && \
git add -u && \
git commit -m "$desc" && \
git push
