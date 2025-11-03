// simple smoke test
const http = require('http');
http.get({hostname:'localhost', port:3000, path:'/'}, res => {
  console.log('STATUS', res.statusCode);
  process.exit(0);
}).on('error', (e) => { console.error('ERR', e); process.exit(1); });
