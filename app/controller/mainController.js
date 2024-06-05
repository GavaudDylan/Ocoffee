const mainController = {
  homePage: (req, res) => {
    res.render("pages/home");
  },
  catalogPage: (req, res) => {
    res.render("pages/catalog");
  },
  shopPage: (req, res) => {
    res.render("pages/shop");
  },
};
module.exports = mainController;
