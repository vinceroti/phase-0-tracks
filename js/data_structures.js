var colors = ["Blue", "Red", "Yellow", "Orange"];
var names = ["Tom", "Will", "Fred", "HorswithnoE"];
colors.push("Green");
names.push("Tan Brown");
var horses = {};


for (var i = 0; i < colors.length; i++) {
  horses[names[i]]=colors[i];
}

console.log(horses);

var car = {
  year: 2005,
  color: "red",
  make: "Audi"
};

function Car(year, color, make) {
  this.year = year;
  this.color = color;
  this.make = make;

  this.maxSpeed = function() { console.log("You are going max speed!!!"); };
  console.log("Car Initiation Complete!!");
}

var first_car =  new Car(2010, "Black", "Lambo");

first_car.maxSpeed();

var second_car = new Car(2016, "Blue", "Toyota");

console.log(second_car.color);

// Looping through hashes

// var cat = {
//     name: "Mr. Whiskers",
//     color: "orange",
//     hair: "short",
//     age: 2 
// };

// for(var x in cat){
//     console.log(x + ": " + cat[x]);
// }

// outputs this:
// name: Mr. Whiskers
// color: orange
// hair: short
// age: 2