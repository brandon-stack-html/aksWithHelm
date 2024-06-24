const express = require('express');
const app = express();
const port = process.env.PORT || 3001;

app.get('/service-b', (req, res) => {
  res.send('Hello from Service B');
});

app.listen(port, () => {
  console.log(`Service B running on port ${port}`);
});
