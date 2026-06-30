const express = require('express');
const router = express.Router();
const db = require('../conexion-mysql');

router.get('/', async (req, res) => {
  const { q = "", region = "todas" } = req.query;
  let condicion = "WHERE nombre LIKE ? OR nombre_cientifico LIKE ?";
  const valores = [`%${q}%`, `%${q}%`];

  if (region !== "todas") {
    condicion += " AND region = ?";
    valores.push(region);
  }

  const [resultado] = await db.query(`SELECT id, nombre, region FROM huesos ${condicion}`, valores);
  res.json(resultado);
});

module.exports = router;