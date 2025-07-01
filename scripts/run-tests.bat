@echo off
mkdir ..\newman
newman run ..\postman\My_Capital_QA.postman_collection.json -r cli,html --reporter-html-export ..\newman\newman-report.html
pause
