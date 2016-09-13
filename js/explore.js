// In order to reverse the word "hello" we first must make define it so javascript recognizes it
// storing this in a FUNCTION will help as well and calling it through a parameter will as well
// For each letter of the string we will iterate over it starting from the last letter
// Printing out every letter from the last to start
// Call the function with string parameter in order to reverse the word!

function reverse(string) {
  var s = ""; // empty string in order to store array
  for (var i = string.length - 1; i >= 0; i--) {    // .length - 1 in order to get rid of undefined
    s += string[i]; // stores array into string to display
  }
  console.log(s);
}

// driver code
var vince_is_cool = true;

if (vince_is_cool == true) {
  reverse("Vince is cool, I agree");
}