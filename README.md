# k6 Performance Testing Examples

## 📌 Description

This repository contains examples of load testing using [k6](https://k6.io) for QA practice and portfolio.

---

## ✅ Test 1: Demo site load test

🔗 **URL:** https://test.k6.io  
👥 **Virtual Users (VU):** 10  
⏱ **Duration:** 30 seconds

### 📜 Script

The [`test.js`](./test.js) file contains the test scenario.

### 📊 Results

- Number of requests: 510
- Average response time: ~57ms
- Errors: ~6%

### 💡 **Conclusion**

The test showed an average response time of ~57ms with 10 VUs and no significant errors.  
In real practice, load testing of public sites is performed **only with the owners' permission**.

---

## ✅ Test 2: Creating users via POST

🔗 **URL:** https://jsonplaceholder.typicode.com/users  
👥 **Virtual Users (VU):** 10  
🔄 **Iterations:** 10

### 📜 Script

The [`test-post-users.js`](./test-post-users.js) file sends POST requests to create users with name, username, and email.

### 📊 Results

- **Status:** 201 Created
- **Average Response Time:** ~360ms
- **Errors:** 0%

### 💡 **Conclusion**

The test successfully created 10 users (mock response) using POST requests.  
JSONPlaceholder does not save data but returns a valid created object for testing purposes.

---

## 🛠 Plans

- Add POST request examples with reqres.in
- Add PUT and DELETE request tests
- Test a local mock API (json-server)
- Set up integration with Grafana Cloud

---

### 🙋‍♀️ Author

Olga Vashurina