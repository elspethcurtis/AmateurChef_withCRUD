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
    if (recipes){
        res.render("categories/category", {recipes: recipes, title: req.params.category});}
    else {
        res.sendStatus(404);
    }
}));


module.exports = router;