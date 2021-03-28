#!/bin/bash

mkdir -p /root/.TRIGGERcmdData

if [[ -z "${TOKEN}" ]]; then
  echo "TOKEN environment variable not found.  We'll prompt for a token."
else
  echo -n ${TOKEN} >> /root/.TRIGGERcmdData/token.tkn
fi

if [[ -z "${COMPUTERID}" ]]; then
  echo "COMPUTERID environment variable not found.  We'll create a new computer in the account."
else
  echo -n ${COMPUTERID} >> /root/.TRIGGERcmdData/computerid.cfg
fi

if [[ -z "${COMMANDS}" ]]; then
  echo "COMMANDS environment variable not found.  We'll use the default commands."
else
  echo ${COMMANDS} >> /root/.TRIGGERcmdData/commands.json
fi

node agent.js --console