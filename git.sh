#!/bin/bash
git pull && \
git status && \
read -p "Commit description: " desc
git add . && \
git add -u && \
git commit -m "$desc" && \
git push
