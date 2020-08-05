var express = require('express');
var router = express.Router();
var Recipe = require('../models/').Recipe;
//require express-validator to be able to refuse form submission when fields are blank
const {check, validationResult}= require('express-validator');

//Send a GET request to /? to READ all recipes from db

//Send a GET request to /recipes/new to render form to create/add new recipe to db
router.get('/new', function(req, res, next) {
    res.render('recipes/new', { recipe: {}, title: "New Recipe"});
});

//Send a GET request to /recipes/:id to READ/view individual recipe
router.get("/:id", (async (req, res) => {
    const recipe = await Recipe.findByPk(req.params.id);
    res.render("recipes/recipe", {recipe: recipe, title: recipe.name});
}));


//Send a POST request to /recipes/ to add new recipe to db
router.post('/', [
    //check for errors
    check('name').not().isEmpty().withMessage('Name cannot be empty.'),
    check('hours').not().isEmpty().withMessage('Hours cannot be empty.'),
    check('minutes').not().isEmpty().withMessage('Minutes cannot be empty.'),
    check('ingredients').not().isEmpty().withMessage('Ingredients cannot be empty.'),
    check('directions').not().isEmpty().withMessage('Directions cannot be empty.'),
    check('category').not().isEmpty().withMessage('Category cannot be empty.')
], 
    //function to validate and submit form
    (async (req, res, next) => {
        //define errors
        const errors = validationResult(req);
//    console.log(req.body);
    console.log(errors.array());
        //if there are errors
        if (!errors.isEmpty()) {
            //render the form again with the errors
            return res.render('recipes/new', {errors:errors.array(), recipe: {}});
        }
    else {
            //if no errors add to db
            const recipe = await Recipe.create(req.body);
            res.redirect("/recipes/" + recipe.id);
        }
}));

//Send a GET request to recipes/:id/edit to edit/update recipe
router.get("/:id/edit", (async(req, res) => {
    const recipe = await Recipe.findByPk(req.params.id);
    res.render("recipes/edit", {recipe: recipe, title: "Edit Recipe"});
}))

//Send a POST request to /recipes/:id/edit to update recipe
router.post('/:id/edit', (async(req, res) => {
    const recipe = await Recipe.findByPk(req.params.id);
    await recipe.update(req.body);
    res.redirect('/recipes/'+recipe.id);
}));

//Send a GET request to /recipes/:id/delete to select recipe to delete
router.get("/:id/delete", (async(req, res) => {
    const recipe = await Recipe.findByPk(req.params.id);
    res.render("recipes/delete", {recipe: recipe, title: "Delete Recipe"});
}));

//Send a POST request to /recipes/:id/delete to destroy in database
router.post("/:id/delete",(async(req, res) => {
    const recipe = await Recipe.findByPk(req.params.id);
    await recipe.destroy();
    res.redirect("/categories");
}));

//DELETE/Destroy recipe

module.exports = router;
