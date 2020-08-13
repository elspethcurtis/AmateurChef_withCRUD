## Pre-Requisites: 
* Download and install a package installer
	* Mac: Homebrew
		* https://brew.sh/
	* WIndows: Chocolatey
		* https://chocolatey.org/install
* Download and install MAMP 
	* https://www.mamp.info/
* Download and install database GUI: 
	* Windows
		* heidisql 
			* Using Chocolatey: choco install heidisql
			* Alternatively, download from heidisql.com or app store
	* Mac
		* Sequel Pro
			* Using homebrew: brew cask install sequel-pro
* Install Node.js
	* https://nodejs.org/en/
* Download Git Repo 


## Steps to get project up and running: 
1. Open MAMP, click start server if does not start automatically. Click the Open WebStart page. Make sure that the username, password  and port number match the username, password and port number in the config.json file → config/config.json. Also, if your localhost is different than 127.0.0.1 adjust that in the config file. 
1. Open database GUI.(Sequel Pro or HeidiSql)
	1. Sequel Pro choose quick connect
		1. Type in whatever name you choose for your session. 
		1. Type in username and password to match MAMP and config file. 
		1. Import db file.
			1. Create database named fsjs_project, then choose 'Import...' from the File menu. This will bring up a dialog box, select the db.sql file, then choose SQL from the "Format:" drop down menu and click "Open". Your database will now be updated. Click the Table refresh button if needed.
	1. HeidiSQL 
		1. Type in whatever name you choose for your session. 
		1. Type in username and password to match MAMP and config file. 
		1. Import db file.
			1. HeidiSQL - click file -> Run Sql File (choose db.sql)
1. Using Git Bash or terminal navigate to project folder. 
1. Install project dependencies. 
	1. Command: npm install
1. Start application. 
	1. Command: npm start
1. In your browser navigate to localhost:3000

## What is my project? 
A site to store recipes. You can view the recipes that are already entered into the database as well as add new ones, update and delete as you choose. 

### Features: 
* Responsive front-end
* CRUD application
