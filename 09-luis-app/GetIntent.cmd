@echo off

rem Set values for your Language Understanding app
set app_id=78c77e25-3b2f-470a-8d00-a5cfd8be9749
set endpoint=https://salolanguageunderstanding.cognitiveservices.azure.com/
set key=adfa46b543864964a34dd6ee1b118d02

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"