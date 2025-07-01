@echo off
cd C:\Users\ovash\Desktop\load\k6-performance-tests
k6 run --out json=k6_tests\k6-report.json k6_tests\test-post-users.js
C:\Users\ovash\npm-global\node_modules\.bin\k6-html-reporter.cmd --json k6_tests\k6-report.json --output k6_tests\k6-report.html
xcopy k6_tests\k6-report.html ..\qa-allure-reports /Y
pause
