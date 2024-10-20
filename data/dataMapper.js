const client = require("./database");

const dataMapper = {
	async getAllCoffees() {
		const query = `SELECT * FROM "coffee"`;
		const result = await client.query(query);
		console.log(result.rows);
		return result.rows;
	},

	async getCoffeById(coffeeId) {
		const result = await client.query(`SELECT * FROM coffee WHERE id = $1`, [
			coffeeId,
		]);
		const coffeeInfo = result.rows[0];
		return coffeeInfo || null;
	},
};

module.exports = dataMapper;
