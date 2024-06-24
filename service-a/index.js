const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/service-a', (req, res) => {
  res.send('Hello from Service A');
});

app.listen(port, () => {
  console.log(`Service A running on port ${port}`);
});
