#!/usr/bin/env bash

docker run \
  --workdir "/github/workspace" \
  -v "${PWD}:/github/workspace" \
  --rm \
  -e CARGO_HOME="/github/workspace/.cargo_home" \
  -e HOME \
  -v "/home/runner/work/_temp/_github_home:/github/home" \
  -v "/home/runner/work/_temp/_github_workflow:/github/workflow" \
  -e GITHUB_REF \
  -e GITHUB_SHA \
  -e GITHUB_REPOSITORY \
  -e GITHUB_ACTOR \
  -e GITHUB_WORKFLOW \
  -e GITHUB_HEAD_REF \
  -e GITHUB_BASE_REF \
  -e GITHUB_EVENT_NAME \
  -e GITHUB_WORKSPACE \
  -e GITHUB_ACTION \
  -e GITHUB_EVENT_PATH \
  -e RUNNER_OS \
  -e RUNNER_TOOL_CACHE \
  -e RUNNER_TEMP \
  -e RUNNER_WORKSPACE \
  $@
