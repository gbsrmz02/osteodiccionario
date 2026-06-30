const express = require('express');
const cors = require('cors');
const app = express();

app.use(cors());
app.use(express.json());
app.use('/api/huesos', require('./rutas/huesos'));

const puerto = 3000;
app.listen(puerto, () => {
  console.log(`✅ API Node en puerto ${puerto}`);
});