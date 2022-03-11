#!/bin/bash

import { cherryPickCommits } from "github-cherry-pick";

const example = async () => {
  const newHeadSha = await cherryPickCommits({
    // The SHA list of the commits to cherry-pick.
    // The commits will be cherry-picked in the order they appear in the array.
    // Merge commits are not supported.
    // See https://git-scm.com/docs/git-cherry-pick for more details.
    commits: [
      "8b10a7808f06970232dc1b45a77b47d63641c4f1",
      "f393441512c54435819d1cdd8921c0d566911af3",
    ],
    // The name of the branch/reference on top of which the commits will be cherry-picked.
    head: "dev",
    // An already authenticated instance of https://www.npmjs.com/package/@octokit/rest.
    octokit,
    // The username of the repository owner.
    owner,
    // The name of the repository.
    repo,
  });
};
