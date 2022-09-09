@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set variables
set prediction_url="https://ls91.cognitiveservices.azure.com/language/:query-knowledgebases?projectName=labb1&api-version=2021-10-01&deploymentName=productionn"
set key="7dc5acfbf27e4d049182f850240963e1"

curl -X POST !prediction_url! -H "Ocp-Apim-Subscription-Key: !key!" -H "Content-Type: application/json" -d "{'question': 'How much does it cost to buy a Nintendo 64 console today?' }"