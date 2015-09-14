function Cart(name) {
	this.name = name;
	this.total = 0;
}

function Item(name,price,quantity,location,upc,manufacturer,manufacturerAddress,manufacturerNumber) {
	this.name = name;
	this.price = price;
	this.quantity = quantity;
	this.location = location;
	this.upc = upc;
	this.manufacturer = manufacturer;
	this.manufacturerAddress = manufacturerAddress;
	this.manufacturerNumber = manufacturerNumber;
}

var banana = new Item("banana", 0.99, 100, "produce", 1011, "bananaCo", "123 main st. Santa Monica, CA 92705", 1112223434);
var apples = new Item("apples", 0.50, 200, "produce");
var oranges = new Item("oranges", 0.25, 150, "produce");

for (i in banana) {console.log(i);}
console.log(Object.keys(banana));


var myCart = new Cart("Kendrick");
//total cost calulator
myCart.total += banana.price * banana.quantity;
myCart.total += apples.price * apples.quantity;
myCart.total += oranges.price * oranges.quantity;
console.log("Item is: " + banana.name + " with a price of: " + banana.price + " and I want " + banana.quantity + " of them.");
console.log("Item is: " + apples.name + " with a price of: " + apples.price + " and I want " + apples.quantity + " of them.");
console.log("Item is: " + oranges.name + " with a price of: " + oranges.price + " and I want " + oranges.quantity + " of them.");

console.log("My cart's total cost is: " + myCart.total);


