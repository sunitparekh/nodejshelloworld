'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
var os = require("os");
var hostname = os.hostname();

app.get('/', (req, res) => {
  res.send('Hello world !!!\n' + hostname + '\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);