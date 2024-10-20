// Charger les variables d'environnement
require("dotenv").config();

// Importe les dépendances tiers
const express = require("express");

// Importe les dépendances locales
const router = require("./app/router");

// Creation d'une application Express
const app = express();

// Mise en place du moteur de rendu
app.set("view engine", "ejs");
app.set("views", "./app/views");

// Service d'un dossier "static"
app.use(express.static("public"));

// Configuration des routes de notre application
app.use(router);

// Middleware 404
app.use((req, res) => {
	console.error("404", req.path);
	res.status(404).render("errors/404");
});

// On démarre un serveur HTTP
const PORT = process.env.PORT || 9000;
app.listen(PORT, () => {
	console.log(`Listening on http://localhost:${PORT}`);
});
