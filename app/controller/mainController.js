const dataMapper = require("../../data/dataMapper");

const mainController = {
  async homePage(req, res) {
    try {
      const coffees = await dataMapper.getAllCoffees();
      res.render("pages/home", {
        coffees,
      });
    } catch (error) {
      console.error(error);
      res
        .status(500)
        .send(`An error occured with the database :\n${error.message}`);
    }
  },

  async catalogPage(req, res) {
    try {
      const coffees = await dataMapper.getAllCoffees();
      res.render("pages/catalog", {
        coffees,
      });
    } catch (error) {
      console.error(error);
      res
        .status(500)
        .send(`An error occured with the database :\n${error.message}`);
    }
  },
  async shopPage(req, res, next) {
    try {
      const espressoId = 1;
      const espresso = await dataMapper.getCoffeById(espressoId);
      console.log(espresso);
      if (!espresso) {
        next;
        return;
      }
      res.render("pages/shop", {
        espresso,
      });
    } catch (error) {
      console.error(error);
      res
        .status(500)
        .send(`An error occured with the database :\n${error.message}`);
    }
  },
};
module.exports = mainController;
