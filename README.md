# 🚀 k6 Performance & API Testing Portfolio

Welcome to my QA portfolio repository. Here you will find:

✅ **Load Testing** with [k6](https://k6.io)
✅ **API Testing** with [Postman](https://www.postman.com/) + [Newman](https://www.npmjs.com/package/newman)
✅ **CI/CD Integration** using **GitHub Actions** and **Jenkins**
✅ **Allure HTML Reports** generation

---

## 📂 **Project Structure**

📁 k6-performance-tests
├- k6_tests/ # k6 performance scripts
├- postman/ # Postman collections
├- scripts/ # Bash scripts for Jenkins
├- allure-report/ # Generated Allure reports
├- .github/workflows/ # GitHub Actions workflows
├- package.json
└- README.md

---

## ⚡ **Implemented Features**

🔹 1. Load Testing (k6)
- Scripts: located in `k6_tests/`
- Run locally:  
  `k6 run k6_tests/test-post-users.js`
- Generates: `k6-report.html` with detailed performance metrics.

🔹 2. API Testing (Postman + Newman)
- Collection: `postman/My_Capital_QA.postman_collection.json`
- Run with Newman & generate Allure report:
  ```bash
  newman run postman/My_Capital_QA.postman_collection.json \
  --reporters cli,allure \
  --reporter-allure-export allure-results

🔹 3. CI/CD
Jenkins Pipelines: run tests and publish reports automatically
GitHub Actions: auto-deployment setup in .github/workflows/

🔹 4. Allure Reports
Beautiful HTML reports generated for both API and performance tests.

---

🎯 Tech Stack
✅ Languages: JavaScript, Bash
✅ Tools: k6, Postman, Newman, Allure
✅ CI/CD: Jenkins, GitHub Actions

---

🌐 About Me
Hi, I'm Olga, a QA Engineer passionate about automation, performance testing, and creating clear, structured test reports that are easy to present to developers and stakeholders.

💡 Connect with me on [LinkedIn](https://www.linkedin.com/in/olga-vashurina/)