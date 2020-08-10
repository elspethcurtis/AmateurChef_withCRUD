var express = require('express');
var router = express.Router();
var Recipe = require('../models/').Recipe;


//Send GET request to /categories/ to show categories to choose from
router.get('/', function(req, res, next) {
  res.render('categories/', {recipes:{}, title: "Recipes"});
});

//Send GET request to /categories/:category to show recipes in :category
router.get('/:category', (async(req, res) => {
        const recipes = await Recipe.findAll({
        where: {
            category: req.params.category
        }
    });
    //if the array is empty (the category doesn't exist) show an error
    if (!recipes.length){
		res.sendStatus(404);
    }
    
    res.render("categories/category", {recipes: recipes, title: req.params.category});
}));


module.exports = router;