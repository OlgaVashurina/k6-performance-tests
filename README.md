🚀 k6 + Postman + Jenkins Performance & API Testing
📌 Overview
This repository includes:

✅ Load testing examples using k6
✅ Postman API test examples executed via Newman
✅ Jenkins integration for CI test runs and report generation
✅ Automated publishing of reports to a separate qa-allure-reports repository for portfolio demonstrations

⚙️ What has been implemented
🔥 1. Load testing with k6
Testing public APIs (jsonplaceholder.typicode.com)

Testing a local Mock API (json-server)

Generating k6 HTML reports (k6-report.html)

💻 2. API testing with Postman via Newman
Postman collection (My_Capital_QA.postman_collection.json)

Generating Allure reports based on Postman test results

Reports are saved in the allure-report folder

🖥️ 3. Jenkins integration
Two Jenkins jobs:

✅ Run Newman API tests: executes the Postman collection and generates an Allure report

✅ Run k6 performance tests: runs k6 scripts and generates an HTML report

Uses batch scripts:

scripts/run-tests.bat — for Postman + Allure

scripts/run-k6-tests.bat — for k6

🌐 4. GitHub Actions
Workflow to generate and deploy reports to a separate repository qa-allure-reports
This allows viewing reports via GitHub Pages and sharing a link without running Jenkins locally.

✅ Final result
🔗 Postman + Allure Reports
All Postman collection tests are executed in Jenkins and generate an Allure report for reviewing results.

🔗 k6 Performance Reports
k6 load tests create a k6-report.html, which is copied to qa-allure-reports for publishing.

🔗 GitHub Pages demo
A separate repository with GitHub Pages is configured to publicly display reports for recruiters.

🔗 Full workflow summary
You push changes to GitHub.

Jenkins automatically pulls the changes.

The following are executed:

Postman tests → Allure report

k6 tests → k6 HTML report

Scripts copy the reports to the second repository, qa-allure-reports.

GitHub Pages publishes the final reports for easy sharing.

🙋‍♀️ Author
Olga Vashurina
QA Engineer | Performance Testing | Automation in Progress