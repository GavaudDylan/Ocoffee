const mainController = {
  homePage: (req, res) => {
    res.render("pages/home");
  },
  catalogPage: (req, res) => {
    res.render("pages/catalog");
  },
};
module.exports = mainController;
