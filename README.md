# k6 Performance Testing Examples

## 📌 Description

This repository contains examples of load testing using [k6](https://k6.io) for QA practice and portfolio.  
Tests include GET, POST, PUT, and DELETE requests for both demo APIs and a local mock API.

---

## ✅ Test 1: Demo site load test

🔗 **URL:** https://test.k6.io  
👥 **Virtual Users (VU):** 10  
⏱ **Duration:** 30 seconds

### 📜 Script

[`test_get.js`](./test_get.js) – GET request to https://test.k6.io.

### 📊 Results

- Total requests: 510
- Average response time: ~57ms
- Errors: ~6%

### 💡 **Conclusion**

The test showed an average response time of ~57ms with 10 VUs and 510 GET requests.  
In real practice, load testing of public sites is performed **only with the owners' permission**.

---

## ✅ Test 2: POST users on JSONPlaceholder

🔗 **URL:** https://jsonplaceholder.typicode.com/users  
👥 **Virtual Users (VU):** 10  
🔄 **Iterations:** 10

### 📜 Script

[`test-post-users.js`](./test-post-users.js) – POST request to create users (mock response).

### 📊 Results

- **Status:** 201 Created
- **Average response time:** ~360ms
- **Errors:** 0%

### 💡 **Conclusion**

Successfully created 10 users (mock) using POST requests.

---

## ✅ Test 3: Local Mock API (json-server)

### 🔗 **Base URL:** http://localhost:3000

#### 🗂 **Tested endpoints:**

- `/users`
- `/posts`

---

### 📜 Scripts

| **Script** | **Description** |
|------------|-----------------|
| [`test-get-local.js`](./test-get-local.js) | GET all users |
| [`test-post-local.js`](./test-post-local.js) | POST new user |
| [`test-put-local.js`](./test-put-local.js) | PUT update user with id=1 |
| [`test-delete-local.js`](./test-delete-local.js) | DELETE user with id=1 |

---

### 📊 **Results (local)**

- GET: Status 200 OK
- POST: Status 201 Created
- PUT: Status 200 OK (full replacement of user data)
- DELETE: Status 200 OK (user deleted)

---

### 💡 **Conclusion**

Practiced CRUD requests on a local mock API created with json-server.  
These tests demonstrate k6 usage for functional and load testing in a controlled local environment.

---

## 🛠 Plans

- ✅ Add POST request examples with reqres.in
- ✅ Add PUT and DELETE request tests
- ✅ Test a local mock API (json-server)
- ⬜ Set up integration with Grafana Cloud

---

🖥️ Jenkins Integration
✅ Configured to:
- Pull repository from GitHub
- Run Postman collection tests via Newman using `run-tests.bat`
- Generate HTML reports automatically
- Publish reports in Jenkins under the **HTML Report** tab

🔗 **How it works:**
On each build, Jenkins:
1. Clones or pulls the repository
2. Runs the Newman collection tests
3. Generates `newman-report.html`
4. Publishes the report for review

💡 **Note:** Reports are stored locally in the project folder under `/newman` and displayed in Jenkins after each build.

### 🙋‍♀️ Author

Olga Vashurina