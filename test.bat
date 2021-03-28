if "%COMPUTERID%"=="" set /p COMPUTERID=Enter COMPUTERID: 
set /p TOKEN=<%USERPROFILE%\.TRIGGERcmdData\token.tkn
docker run -it -e TOKEN=%TOKEN% -e COMPUTERID=%COMPUTERID% -e COMMANDS="[{\"trigger\": \"Test 1\",\"command\": \"echo Testing 1234\",\"ground\": \"foreground\",\"voice\": \"test\"}]" rvmey/triggercmdagent:1.1