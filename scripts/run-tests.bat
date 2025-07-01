@echo off
echo 🔷 Запуск Newman тестов и генерация Allure отчёта...

:: Создаём папку для Allure результатов
mkdir newman_reports

:: Запускаем тесты и формируем отчёты
newman run postman\My_Capital_QA.postman_collection.json -r cli,allure --reporter-allure-export newman_reports\allure-results

echo ✅ Тесты завершены. Результаты сохранены в newman_reports\allure-results

pause