##Pre-Requisites: 
*A package Installer
	*Mac: Homebrew
	*WIndows: Chocolatey
*Download and install MAMP 
	*https://www.mamp.info/
*Download and install database GUI: 
	*Mac
		*heidisql 
			*Using Chocolatey: choco install heidisql
			*Alt - download from heidisql or app store
	*Windows
		*Sequel Pro
			*Using homebrew: brew cask install sequel-pro
*Install Node.js
	*https://nodejs.org/en/
*Download Git Repo 
	*https://github.com/elspethcurtis/AmateurChef_withCRUD


**Steps to get project up and running: 
1.Open and run MAMP. Click the Open WebStart page. Make sure that the username and password match the username and password in the config.json file → config/config.json. 
2.Open database GUI. 
	2.Type in whatever name you choose for your session. 
	2.Type in username and password to match MAMP and config file. 
3.Using Git Bash or terminal navigate to project folder. 
4.Install project dependencies. 
	4.Command: 
5.Start application. 
	5.Command: npm start
6.In your browser navigate to localhost:3000

##What is my project? 
A site to store recipes. You can view the recipes that are already entered into the database as well as add new ones, update and delete as you choose. 

###Features: 
*Responsive front-end
*CRUD application
