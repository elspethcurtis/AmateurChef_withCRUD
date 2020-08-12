var express = require('express');
var router = express.Router();
var Recipe = require('../models/').Recipe;


//Send GET request to /categories/ to show categories to choose from
router.get('/', function (req, res, next) {
	res.render('categories/', {
		recipes: {},
		title: "Recipes"
	});
});

//Send GET request to /categories/:category to show recipes in :category
router.get('/:category', (async (req, res) => {
	const recipes = await Recipe.findAll({
		where: {
			category: req.params.category
		}
	});
	//if the array is empty (the category doesn't exist or there aren't any items in the category) render the main categories page
	if (!recipes.length) {
		res.render('categories/', {
			recipes: {},
			title: "Recipes"
		});
	}

	res.render("categories/category", {
		recipes: recipes,
		//make sure that title will always display capitalized
		title: req.params.category.charAt(0).toUpperCase() + req.params.category.slice(1)
	});
}));


module.exports = router;
