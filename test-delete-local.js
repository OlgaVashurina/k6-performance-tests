import http from 'k6/http';
import { check, sleep } from 'k6';

export default function () {
  let res = http.del('http://localhost:3000/users/1');

  check(res, {
    'status is 200': (r) => r.status === 200
  });
  sleep(1);
}
