'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('Recipes', [{
        name: 'Pancakes',
        time: 5,
        ingredients: 'flour',
        directions: "step 1",
        category: 'breakfast',
        createdAt: new Date(),
        updatedAt: new Date(),
    }])
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('Recipes', null, {});
  }
};
