@echo off
k6 run --out json=k6_tests\k6-report.json k6_tests\test-post-users.js
node -e "const r = require('k6-html-reporter'); r('k6_tests\\k6-report.json', 'k6_tests\\k6-report.html');"
xcopy k6_tests\k6-report.html ..\qa-allure-reports /Y
pause