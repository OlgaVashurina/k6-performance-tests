@echo off
echo =========================================
echo 🚀 Running k6 performance tests...
echo =========================================

k6 run k6_tests\test-post-users.js

if exist k6_tests\k6-report.json (
    echo =========================================
    echo 📝 Generating HTML report from k6-report.json...
    echo =========================================

    k6-html-reporter --json k6_tests\k6-report.json --output k6_tests\k6-report.html

    if exist k6_tests\k6-report.html (
        echo =========================================
        echo 📁 Copying HTML report to qa-allure-reports repo...
        echo =========================================

        xcopy k6_tests\k6-report.html ..\qa-allure-reports /Y

        echo ✅ Report copied successfully!
    ) else (
        echo ❌ HTML report was not generated.
    )
) else (
    echo ❌ k6-report.json was not generated. Check your k6 script.
)

echo =========================================
echo ✅ All done.
echo =========================================
pause