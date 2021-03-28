if [[ -z "${COMPUTERID}" ]]; then
  read -p 'Enter a COMPUTERID for this container: ' COMPUTERID
fi
docker run -it -e TOKEN=`cat ~/.TRIGGERcmdData/token.tkn` -e COMPUTERID=${COMPUTERID} -e COMMANDS='[{"trigger": "Test 1","command": "echo Test One Command","ground": "foreground","voice": "test one"},{"trigger": "Test 2","command": "echo Test Two Command","ground": "foreground","voice": "test two"}]' rvmey/triggercmdagent:1.1