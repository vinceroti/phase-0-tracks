// Pseudocode

// Release 1

// Using conditional statements use the lengths of each array index to determine which
// to print based on which is the longest
// Make a loop that goes through an array and prints the variable created in the condition

// Release 2

// Same thing as release one but different syntax. Use another for loop that will go through
// one object and compare it to the other
// using how to loop through objects in last assignment will help
// If the objects have at least one KEY value they share, return true
// If no values are shared return false

function Length_Finder(array){
  array = array; // sets the parameter to array
  longest_word = ""; // empty string to store what the longest word is

  for (var i = array.length - 1; i >= 0; i--) {
    if (longest_word.length < array[i].length) {
      longest_word = array[i]; // if the length of longest word is less then the word currently at the loops index then replace that word
    };
  };
  console.log(longest_word); // prints longest word
}

function Key_Value(object1, object2){
  object1 = object1; // sets parameter for first object
  object2 = object2; // sets parameter for second object


  for (keys in object1 && object2) { // loops through the keys in both objects
    if (object1[keys] == object2[keys]) { // if the key in object one == object2
     var return_value = true; // returns true if condition is met as sets it as variable

    }
    else if (return_value  == undefined && object1[keys] != object2[keys]) {
      var return_value = false; //if first condition is not met return_value will not be made, thus undefined
    }; // and if undefined and the keys don't equal each other at any point then return value as false
  };
  return return_value; // updates return value for function
}


// Driver Code
Length_Finder(["long phrase","longest phrase","longer phrase","This one is even longer then that one"]);
Length_Finder(["Vince","Will","Thomas The Tank"]);
Length_Finder(["Chicago", "San Francisco", "Texas"]);

console.log(Key_Value({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(Key_Value({name: "Steven", age: 44}, {name: "Tamir", age: 54}));
console.log(Key_Value({name: "Will", age: 44, Language: "English"}, {name: "Vince", age: 23, Language: "English"}));
