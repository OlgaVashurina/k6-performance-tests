@echo off
newman run My_Capital_QA.postman_collection.json --reporters cli,html --reporter-html-export newman/newman-report.html
