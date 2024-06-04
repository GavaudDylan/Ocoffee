const express = require("express");
const mainController = require("./controller/mainController");

const router = express.Router();

router.get("/", mainController.homePage);
router.get("/catalog", mainController.catalogPage);

module.exports = router;
