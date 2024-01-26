#!/bin/bash

if [[ -z "${CI}" ]]; then
  echo "NO OP SINCE WE ARE NOT IN A CI ENVIRONMENT"
else
  if [ "$GITHUB_HEAD_REF" == "main" ]; then
    echo "*** PRODUCTION DEPLOY ***"
    SITE_URL=${PROD_SITE_URL}
  else
    echo "*** DEV DEPLOY ***"
    SITE_URL=${DEV_SITE_URL}
  fi
  curl -H "Content-Type: application/zip" \
       -H "Authorization: Bearer ${NETLIFY_DEPLOY_KEY}" \
       --data-binary "@website.zip" \
       https://api.netlify.com/api/v1/sites/${SITEURL}/deploys
fi
