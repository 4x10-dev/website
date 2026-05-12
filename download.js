const https = require('https');
const fs = require('fs');

const url = 'https://i-p.rmcdn.net/686e3c3b4ab8750a0b5f78d8/5675202/image-807d8405-b870-4600-94c8-b9e9e84d3599.jpg';
const path = './public/assets/team/pavel_new.jpg';

https.get(url, (res) => {
  const filePath = fs.createWriteStream(path);
  res.pipe(filePath);
  filePath.on('finish', () => {
    filePath.close();
    console.log('Download Completed');
  });
}).on('error', (err) => {
  console.error('Error: ', err.message);
});
