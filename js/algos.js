// Pseudocode

// Using conditional statements use the lengths of each array index to determine which
// to print based on which is the longest
// Make a loop that goes through an array and prints the variable created in the condition

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

var array_one = new Length_Finder(["long phrase","longest phrase","longer phrase","This one is even longer then that one"]);

var array_two = new Length_Finder(["Vince","Will","Thomas The Tank"]);

var array_three = new Length_Finder(["Chicago", "San Francisco", "Texas"]);