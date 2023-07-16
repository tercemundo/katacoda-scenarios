const express = require('express');
const app = express();
const port = 3000; // You can change the port number if needed


app.get('/', (req, res) => {
  res.send('Hello, World!');
});


app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
