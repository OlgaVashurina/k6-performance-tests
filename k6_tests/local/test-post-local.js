import http from 'k6/http';
import { check, sleep } from 'k6';

export default function () {
  const payload = JSON.stringify({
    name: "New Local User",
    role: "Tester"
  });

  const params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };

  let res = http.post('http://localhost:3000/users', payload, params);
  check(res, { 'status is 201': (r) => r.status === 201 });
  sleep(1);
}