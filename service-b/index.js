const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const message = process.env.MESSAGE || "Hello from Service B";

app.get('/', (req, res) => {
  res.send(message);
});

app.listen(port, () => {
  console.log(`Service B listening at http://localhost:${port}`);
});
