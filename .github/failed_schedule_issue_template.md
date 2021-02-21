---
title: Scheduled workflow failed
labels:
  - bug
  - "module: datasets"
---

GITHUB_WORKFLOW {{ env.GITHUB_WORKFLOW }}
GITHUB_RUN_ID {{ env.GITHUB_RUN_ID }}
GITHUB_RUN_NUMBER {{ env.GITHUB_RUN_NUMBER }}
GITHUB_ACTION {{ env.GITHUB_ACTION }}
GITHUB_ACTIONS {{ env.GITHUB_ACTIONS }}
GITHUB_ACTOR {{ env.GITHUB_ACTOR }}
GITHUB_REPOSITORY {{ env.GITHUB_REPOSITORY }}
GITHUB_EVENT_NAME {{ env.GITHUB_EVENT_NAME }}
GITHUB_EVENT_PATH {{ env.GITHUB_EVENT_PATH }}
GITHUB_WORKSPACE {{ env.GITHUB_WORKSPACE }}
GITHUB_SHA {{ env.GITHUB_SHA }}
GITHUB_REF {{ env.GITHUB_REF }}
GITHUB_HEAD_REF {{ env.GITHUB_HEAD_REF }}
GITHUB_BASE_REF {{ env.GITHUB_BASE_REF }}
GITHUB_SERVER_URL {{ env.GITHUB_SERVER_URL }}
GITHUB_API_URL {{ env.GITHUB_API_URL }}
GITHUB_GRAPHQL_URL {{ env.GITHUB_GRAPHQL_URL }}
GITHUB_JOB {{ env.GITHUB_JOB }}

Oh no, something went wrong in the scheduled workflow `{{ env.GITHUB_WORKFLOW }}/{{ env.GITHUB_JOB }}`.
Please look into it:

{{ env.GITHUB_SERVER_URL }}/{{ env.GITHUB_REPOSITORY }}/actions/runs/{{ env.GITHUB_RUN_ID }}

Feel free to close this if this was just a one-off error.

cc: @{{ env.GITHUB_ACTOR }}
