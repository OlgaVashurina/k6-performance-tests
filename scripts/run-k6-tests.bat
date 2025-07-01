@echo off
k6 run --out json=k6_tests\k6-report.json k6_tests\test-post-users.js
node -e "require('./node_modules/k6-html-reporter')('k6_tests\\k6-report.json', 'k6_tests\\k6-report.html')"
xcopy k6_tests\k6-report.html ..\qa-allure-reports /Y
pause