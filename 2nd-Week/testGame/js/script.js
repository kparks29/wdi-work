var player1;

window.onload = function() {

	function Monster(level) {
		this.name = getName();
		this.level = level;
		this.health = Math.floor((Math.random()*level+1)*10.25);
		this.strength = Math.floor((Math.random()*level+1)*2.25);

		this.getName = function() {
			var monsterName = ["Slime","Boar","Kolbal","Bat"];
			return monsterName[Math.floor(Math.random()*monsterName.length)];
		}
	}

	function Character(name, race, job) {
		this.setHealth = function(race) {
			if (race == "human") {
				return 40;
			}
			else if (race == "dwarf") {
				return 35;
			}
			else if (race == "elf") {
				return 50;
			}
		}
		this.setStrength = function(job) {
			if (job == "paladin") {
				return 4;
			}
			else if (job == "thief") {
				return 5;
			}
			else if (job == "wizard") {
				return 3;
			}
			else if (job == "cleric") {
				return 2;
			}
		}
		this.setDefense = function(job) {
			if (job == "paladin") {
				return 3;
			}
			else if (job == "thief") {
				return 2;
			}
			else if (job == "wizard") {
				return 3;
			}
			else if (job == "cleric") {
				return 5;
			}
		}
		this.name = name;
		this.race = race;
		this.job = job;
		this.level = 1;
		this.money = 0;
		this.health = this.setHealth(race);
		this.strength = this.setStrength(job);
		this.defense = this.setDefense(job);

	}

	function User(firstName, lastName, email, phone){
		var elements = startGame();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.characters = [];

		this.changeName = function(newFirstName, newLastName) {
			this.firstName = newFirstName;
			this.lastName = newLastName;
		}

		this.changeEmail = function(newEmail) {
			this.email = newEmail;
		}

		this.changePhone = function(newPhone) {
			this.phone = newPhone;
		}

		this.newCharacter = function() {
			//prompt the user for character selection
			var name = prompt("What is your character name?");
			var race = prompt("What race do you want to choose? (human, elf, or dwarf)");
			var job = prompt("What job do you wnat ot choose? (paladin, thief, wizard, cleric)");
			var character = new Character(name, race, job);
			this.characters.push(character);
		}
	}
	function startGame() {
		// var fname = prompt("What is your first name?");
		// var lname = prompt("What is your last name?");
		// var email = prompt("What is your email?");
		// var phone = prompt("What is your phone number?");
		//player1 = new User(fname, lname, email, phone);
		//var answer = prompt("Would you like to create a new character?  (y/n)");
		// if (answer == "y") {
		// 	player1.newCharacter();
		// }
		var game = new createPlatform()
		game.MakeBackground();
		game.askQuesiton("First Name");
		return [firstName, lastName, email, phone]

	}

	function createPlatform() {
		this.MakeBackground = function() {
			var div = document.createElement('div');
			document.body.appendChild(div);
		}
		this.MakeInput = function(divs) {
			var input = document.createElement('input');
			divs[0].appendChild(input);
			this.MakeButton(divs);
			
		}
		this.MakeButton = function(divs) {
			var button = document.createElement('button');
			divs[0].appendChild(button);
			button.innerHTML = "Submit";
		}
		this.askQuesiton = function(question) {
			var divs = document.getElementsByTagName('div');
			var p = document.createElement('p');
			divs[0].appendChild(p);
			p.innerHTML = "What is your "+ question+"?"
			this.MakeInput(divs);
			
		}
	}

	


	var ken = new User();


	var button = document.getElementsByTagName('button');
	var input = document.getElementsByTagName('input');
	for (var i=0;i < button.length; i++) {
		console.log(i)
		button[i].onclick = function() {
					console.log(input[i].value);
		}
	}


}