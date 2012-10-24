#!/bin/bash
git status && \
read -p "Commit description: " desc
git pull && \
git add . && \
git add -u && \
git commit -m "$desc" && \
git push
