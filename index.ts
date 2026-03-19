import http from 'http';

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello Jenkins CI/CD 🚀');
});

server.listen(3000, () => {
  console.log('Server running on port 3000');
});