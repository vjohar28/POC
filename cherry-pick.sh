#!/usr/bin/env bash

<<<<<<< main
target_branch="develop";
=======
target_branch="dev";
>>>>>>> local

if [[ $1 ]]; then
     target_branch="$1";
fi

commit=$(git rev-parse HEAD);
commit_short=$(git rev-parse --short HEAD);
current_branch=$(git rev-parse --abbrev-ref HEAD);

git checkout "${target_branch}";
git pull 2> /dev/null;
git cherry-pick "${commit}";
git push 2> /dev/null;
git checkout "${current_branch}";

cherry_picked_commit=$(git rev-parse --short ${target_branch});
echo "Commit ${commit_short} was successfully cherry-picked to branch ${target_branch} as commit ${cherry_picked_commit}."
