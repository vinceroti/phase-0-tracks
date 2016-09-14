var colors = ["Blue", "Red", "Yellow", "Orange"];
var names = ["Tom", "Will", "Fred", "HorswithnoE"];
colors.push("Green");
names.push("Tan Brown");
var horses = {};


for (var i = 0; i < colors.length; i++) {
  horses[names[i]]=colors[i];
}


console.log(horses);
