const client = require("./database");

const dataMapper = {
  async getAllCoffees() {
    const query = `SELECT * FROM coffee`;
    const result = await client.query(query);
    return result.rows;
  },
};

module.exports = dataMapper;
