import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  vus: 10,
  iterations: 10,
};

export default function () {
  const url = 'https://jsonplaceholder.typicode.com/users';
  const payload = JSON.stringify({
    name: 'Test User',
    username: 'testuser',
    email: 'testuser@example.com'
  });

  const params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };

  const res = http.post(url, payload, params);

  console.log('Status:', res.status);
  console.log('Body:', res.body);

  sleep(1);
}