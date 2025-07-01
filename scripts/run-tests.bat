@echo off
echo Running Newman tests...

newman run postman\My_Capital_QA.postman_collection.json -r cli,allure --reporter-allure-export allure-results

echo Generating Allure report...
allure generate allure-results -o allure-report --clean

echo Copying report to qa-allure-reports repo...
xcopy allure-report\* ..\qa-allure-reports /E /H /C /I /Y

echo All done!
pause