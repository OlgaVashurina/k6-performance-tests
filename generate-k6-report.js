const reporter = require('k6-html-reporter');
const options = {
    jsonFile: 'k6_tests/k6-report.json',
    output: 'k6_tests/k6-report.html',
};
reporter.generateSummaryReport(options);
