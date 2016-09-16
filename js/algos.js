// Pseudocode

// Release 0

// Using conditional statements use the lengths of each array index to determine which
// to print based on which is the longest
// Make a loop that goes through an array and prints the variable created in the condition

// Release 1

// Same thing as release one but different syntax. Use another for loop that will go through
// one object and compare it to the other
// using how to loop through objects in last assignment will help
// If the objects have at least one KEY value they share, return true
// If no values are shared return false

// Release 2

// create an empty array for data to funnel to
// set length of array from parameter
// use a charset to allow for random words
// set the length of the word to something random
// loop and iterate through charset to create random word and funnel data to word
// push new word to array
// return array


function Length_Finder(array){
  var array = array; // sets the parameter to array
  var longest_word = ""; // empty string to store what the longest word is
  var comparer = ""; // empty string to allow for more words to fall into

  for (var i = array.length - 1; i >= 0; i--) {
    if (longest_word.length < array[i].length) {
      longest_word = array[i]; // if the length of longest word is less then the word currently at the loops index then replace that word
    }
  };
  // another loop to determine if there are more words that are the same length as the longest_word but not the same word
  for (var i = array.length - 1; i >= 0; i--) { 
    if (longest_word != array[i] && longest_word.length == array[i].length) {
      comparer += ", " + array[i]; // if the length of longest word is less then the word currently at the loops index then replace that word
    }
  };
  console.log(longest_word + comparer + " are/is the largest!"); // prints longest word
}

function Key_Value(object1, object2){
  var object1 = object1; // sets parameter for first object
  var object2 = object2; // sets parameter for second object


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

function Random_Test_Data(parameter_length){
  var array = []; // empty array
  var parameter_length = parameter_length; // takes the parameter length and sets it as a variable
  var charset = "abcdefghijklmnopqrstuvwyxz"; // word bank to make random word
  var counter = 0; // setting counter at zero for while loop  


  while (parameter_length != counter) {
    var word = ""; // empty word to reset every time it iterates
    var length = Math.floor((Math.random() * 10) + 1); // setting length to use in loop and to determine length of word, resets everytime it goes through the while loop
    for (var i = length - 1; i >= 0; i--) { // adds letters to word until it reaches the same length as length
      word += (charset[Math.floor((Math.random() * charset.length))]); // generates a random number of letters according to length of parameter
        }
    array.push(word); // pushes the word into array
    counter += 1; //increments counter  
  }
  console.log(array);
  return array; // returns array 
}


// Driver Code
Length_Finder(["long phrase","longest phrase","longer phrase","This one is even longer then that one"]);
Length_Finder(["Vince","Will","Thomas The Tank"]);
Length_Finder(["Chicago", "San Francisco", "Texas"]);

console.log(Key_Value({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(Key_Value({name: "Steven", age: 44}, {name: "Tamir", age: 54}));
console.log(Key_Value({name: "Will", age: 44, Language: "English"}, {name: "Vince", age: 23, Language: "English"}));

Random_Test_Data(4); // array of four random words out of 10

for (i = 1; i <= 10; i++){
  Length_Finder(Random_Test_Data(i)); // loops through 10 times to display 10 arrays with with lengths from 1 - 10 and telling which one is the biggest
 }
