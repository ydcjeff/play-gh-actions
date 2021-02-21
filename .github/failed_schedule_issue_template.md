---
title: {{ env.GITHUB_WORKFLOW }} failed
labels:
  - bug
  - "module: datasets"
---

Oh no, something went wrong in the 
**{{ env.GITHUB_JOB }}** job of 
**{{ env.GITHUB_WORKFLOW }}** workflow with commit
**{{ env.GITHUB_SHA }}**.

Please look into it:

{{ env.GITHUB_SERVER_URL }}/{{ env.GITHUB_REPOSITORY }}/actions/runs/{{ env.GITHUB_RUN_ID }}

Feel free to close this if this was just a one-off error.


cc: @{{ env.GITHUB_ACTOR }}
