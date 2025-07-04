# 🚀 k6 Performance & API Testing Portfolio

## ✨ Summary
This repository contains automated performance and API tests with **k6** and **Postman + Newman**, integrated with **Allure reporting** and **CI/CD pipelines (Jenkins & GitHub Actions)**.

---

## ✅ Main Features

| ✅ | **Load Testing with k6**                          |
|----|---------------------------------------------------|
| ✅ | **API Testing with Postman + Newman**             |
| ✅ | **CI/CD integration (GitHub Actions & Jenkins)**  |
| ✅ | **Allure HTML Reports for results visualization** |

---

## 📁 Project Structure

| Folder / File | Description |
| ------------- | ----------- |
| [k6_tests/](./k6_tests) | ⚡ k6 performance test scripts |
| [postman/](./postman) | 📬 Postman API collections |
| [scripts/](./scripts) | 🔧 Shell/Batch scripts for Jenkins jobs |
| [allure-report/](./allure-report) | 📊 Generated Allure reports |
| [.github/workflows/](./.github/workflows) | ⚙️ GitHub Actions workflows |
| [package.json](./package.json) | 📦 Project dependencies and scripts |
| [README.md](./README.md) | 📝 Project documentation |

---

## ⚡ Implemented Features

### 🔹 1. Load Testing (k6)
- **Scripts:** `k6_tests/`
- **Run locally:**  
  `k6 run k6_tests/test-post-users.js`
- **Generates:** `k6-report.html` with detailed performance metrics.

### 🔹 2. API Testing (Postman + Newman)
- **Collection:** `postman/My_Capital_QA.postman_collection.json`
- **Run locally & generate Allure report:**
  ```bash
  newman run postman/My_Capital_QA.postman_collection.json \
    --reporters cli,allure \
    --reporter-allure-export allure-results

### 🔹 3. CI/CD Integration
- Jenkins Pipelines: run tests and publish reports automatically.
- GitHub Actions: auto-deployment setup in .github/workflows/.
- Outcome: fully automated testing and reporting pipeline.

### 🔹 4. Allure Reports
- Integrated with: Newman collections and potentially k6 (via converters).
- Generates: beautiful HTML Allure reports for both API and performance tests.
➡️ **View latest report:** [allure-report/index.html](allure-report/index.html)

---

🎯 Tech Stack
- Languages: JavaScript, Bash
- Tools: k6, Postman, Newman, Allure
- CI/CD: Jenkins, GitHub Actions

---

🌐 About Me
Hi, I'm Olga, a QA Engineer passionate about automation, performance testing, and creating clear, structured test reports that are easy to present to developers and stakeholders.

💡 Connect with me on [LinkedIn](https://www.linkedin.com/in/olga-vashurina/)