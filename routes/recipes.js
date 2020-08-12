var express = require('express');
var router = express.Router();
var Recipe = require('../models/').Recipe;
//require express-validator to be able to refuse form submission when fields are blank
const {
	check,
	validationResult
} = require('express-validator');

//Send a GET request to /recipes/new to render form to create/add new recipe to db
router.get('/new', function (req, res, next) {
	res.render('recipes/new', {
		recipe: {},
		title: "New Recipe"
	});
});

//Send a GET request to /recipes/:id to READ/view individual recipe
router.get("/:id", (async (req, res) => {
	const recipe = await Recipe.findByPk(req.params.id);
	res.render("recipes/recipe", {
		recipe: recipe,
		title: recipe.name
	});
}));


//Send a POST request to /recipes/ to add new recipe to db
router.post('/', [
//    check for errors
    check('name').not().isEmpty().withMessage('Name cannot be empty.'),
    check('hours').not()
        .isEmpty().withMessage('Hours cannot be empty').bail()
        .isInt().withMessage('Hours should be a number'),
    check('minutes').not()
        .isEmpty().withMessage('Minutes cannot be empty').bail()
        .isInt().withMessage('Minutes should be a number'),
    check('ingredients').not().isEmpty().withMessage('Ingredients cannot be empty.'),
    check('directions').not().isEmpty().withMessage('Directions cannot be empty.'),
    check('category').not()
		.isEmpty().withMessage('Category cannot be empty.').bail()
		.optional().isIn(['Breakfast', 'Dinner', 'Dessert', 'Sides', 'Cocktails']).withMessage('Category does not exist.')
],
	//function to validate and submit form
	(async (req, res, next) => {
		//define errors
		const errors = validationResult(req);
		console.log(req.body);
		//if there are errors
		if (!errors.isEmpty()) {
			//render the form again with the errors at top of page and pass the req.body to recipe object so that the data from user doesn't disappear
			return res.render('recipes/new', {
				errors: errors.array(),
				recipe: req.body
			});
		}
		//make a constant so I can add the photo to the body before adding to the database
		let body = req.body;
		//look to see if there are files attached to the form
		if (req.files) {
			const photo = req.files.photo;
			//define route for where photo is to be saved
			const photoRoute = `./public/images/${photo.name}`;
			//save the image to the images folder
			photo.mv(photoRoute);
			//add photo route to recipe object to be added to db - note that it is different from the route to be saved (doesn't include the ./public)
			body.photo = `/images/${photo.name}`;
		}


		//if no errors add to db
		const recipe = await Recipe.create(body);
		res.redirect("/recipes/" + recipe.id);
	}));

//Send a GET request to recipes/:id/edit to edit/update recipe
router.get("/:id/edit", (async (req, res, next) =>{
	const recipe = await Recipe.findByPk(req.params.id);
	console.log(recipe.category);
	console.log(recipe.photo)
	res.render("recipes/edit", {
		recipe: recipe,
		title: "Edit Recipe"
	});
}))

//Send a POST request to /recipes/:id/edit to update recipe
router.post('/:id/edit', 
[
//    check for errors
    check('name').not().isEmpty().withMessage('Name cannot be empty.'),
    check('hours').not()
        .isEmpty().withMessage('Hours cannot be empty').bail()
        .isInt().withMessage('Hours should be a number'),
    check('minutes').not()
        .isEmpty().withMessage('Minutes cannot be empty').bail()
        .isInt().withMessage('Minutes should be a number'),
    check('ingredients').not().isEmpty().withMessage('Ingredients cannot be empty.'),
    check('directions').not().isEmpty().withMessage('Directions cannot be empty.'),
    check('category').not().isEmpty().withMessage('Category cannot be empty.')
],
	(async (req, res) => {
		//define errors
		const errors = validationResult(req);
		//if there are errors
		if (!errors.isEmpty()) {
			//render the form again with the errors at top of page and pass the req.body to recipe object so that the data from user doesn't disappear
			return res.render('recipes/new', {
				errors: errors.array(),
				recipe: req.body
			});
		}
	
			let body = req.body;
		//look to see if there are files attached to the form
		if (req.files) {
			const photo = req.files.photo;
			//define route for where photo is to be saved
			const photoRoute = `./public/images/${photo.name}`;
			//save the image to the images folder
			photo.mv(photoRoute);
			//add photo route to recipe object to be added to db - note that it is different from the route to be saved (doesn't include the ./public)
			body.photo = `/images/${photo.name}`;
		}


	//if no errors add to db
		const recipe = await Recipe.findByPk(req.params.id);
		await recipe.update(req.body);
		console.log(req.body);
		res.redirect('/recipes/' + recipe.id);
	}));

//Send a GET request to /recipes/:id/delete to select recipe to delete
router.get("/:id/delete", (async (req, res) => {
	const recipe = await Recipe.findByPk(req.params.id);
	res.render("recipes/delete", {
		recipe: recipe,
		title: "Delete Recipe"
	});
}));

//Send a POST request to /recipes/:id/delete to destroy in database
router.post("/:id/delete", (async (req, res) => {
	const recipe = await Recipe.findByPk(req.params.id);
	await recipe.destroy();
	res.redirect("/categories");
}));

module.exports = router;
