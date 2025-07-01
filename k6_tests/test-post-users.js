import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
  vus: 1,
  iterations: 5,
};

export default function () {
  const payload = JSON.stringify({
    name: 'Demo User',
    username: 'demouser',
    email: 'demo@example.com'
  });

  const headers = { 'Content-Type': 'application/json' };

  let res = http.post('https://jsonplaceholder.typicode.com/users', payload, { headers });

  check(res, {
    'status is 201': (r) => r.status === 201
  });

  console.log('Server Status:', res.status);
  sleep(1);
}

export function handleSummary(data) {
    return {
        "k6_tests/k6-report.json": JSON.stringify(data),
    };
}