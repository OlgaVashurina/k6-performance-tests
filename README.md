# k6 Performance Testing Examples

## 📌 Description

This repository contains examples of load testing using [k6](https://k6.io) for QA practice and portfolio.

---

## ✅ Test 1: Demo site load test

🔗 **URL:** https://test.k6.io  
👥 **Virtual Users (VU):** 10  
⏱ **Duration:** 30 seconds

---

### 📜 Script

The [`test.js`](./test.js) file contains the test scenario.

---

### 📊 Results

The [`results.json`](./results.json) file contains full metrics:

- Number of requests
- Response time (latency)
- Number of errors (http_req_failed)
- RPS (requests per second)

---

### 💡 **Conclusion**

The test showed an average response time of ~57ms with 10 VUs and no significant errors.  
In real practice, load testing of public sites is performed **only with the owners' permission**.

---

## 🛠 Plans

- Add POST request examples
- Test a local mock API
- Set up integration with Grafana Cloud

---

### 🙋‍♀️ Author

Olga Vashurina