
str = "hello"

//build function that takes a string as a parameter
function reverse(str){

var newString = "";
//loop through individuals characters of the string backwards
for (var i = str.length -1; i >=0; i--){

// add the individual characters to newString
	
	newString += str[i];

}

return newString;

}

console.log(reverse(str));