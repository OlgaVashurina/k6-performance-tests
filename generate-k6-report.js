const reporter = require('k6-html-reporter');
const fs = require('fs');

const input = 'k6_tests/k6-report.json';
const output = 'k6_tests/k6-report.html';

const json = JSON.parse(fs.readFileSync(input, 'utf8'));
reporter.generateHTMLReport(json, output);

console.log('✅ HTML report generated at', output);
