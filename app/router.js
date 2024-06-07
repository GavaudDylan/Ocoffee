const express = require("express");
const mainController = require("./controller/mainController");

const router = express.Router();

router.get("/", mainController.homePage);
router.get("/catalog", mainController.catalogPage);
router.get("/shop", mainController.shopPage);
router.get("/detail/:id", mainController.detailPage);

module.exports = router;
