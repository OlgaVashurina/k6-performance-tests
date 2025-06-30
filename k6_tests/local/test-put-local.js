import http from 'k6/http';
import { check, sleep } from 'k6';

export default function () {
  const payload = JSON.stringify({
    name: "Updated User",
    role: "Senior Tester"
  });

  const params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };

  let res = http.put('http://localhost:3000/users/1', payload, params);

  check(res, {
    'status is 200': (r) => r.status === 200
  });

  sleep(1);
}