@echo off
echo Running k6 performance tests...
k6 run k6_tests\test-post-users.js

echo Generating HTML report from k6-report.json...
node C:\Users\ovash\npm-global\node_modules\k6-html-reporter\bin\cli.js --json k6_tests\k6-report.json --output k6_tests\k6-report.html

echo Copying HTML report to qa-allure-reports repo...
xcopy k6_tests\k6-report.html ..\qa-allure-reports /Y

echo All done.
pause