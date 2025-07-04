@echo off
cd C:\Users\ovash\Desktop\load\k6-performance-tests
k6 run --out json=k6_tests\k6-report.json k6_tests\test-post-users.js
node generate-k6-report.js

pause
