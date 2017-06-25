//RELEASE 0


function LongestPhrase(array){
var length = 0;
var longest;

// loop using the length of an array as the parameter
	for (var i = 0; i < array.length; i ++){
// conditional if the length of an array at a given index
// is greater than length longest is the array at position index
		if (array[i].length > length){
		var length = array[i].length;
		longest = array[i];
	}

}
console.log("the longest phrase in the array:" +longest)
}


//RELEASE 1

function CheckKey(item, item1){

	this.item = item;
	this.item1 = item1;

	this.keys = function(){

	if (item.name == item1.name){
	console.log("true");			
}
	else if (item.age == item1.age){
	console.log("true");

	}
	

	}
	this.validate = function(){


}





//RELEASE 2

// seperate function used to create a random word

	this.random = function() {
// alphabet defined as a resource to be used to construct strings
//randomnumber defined to create a random loop for varying length
// randomnumber2 is used to construct random strings

	alphabet = "abcdefghijklmnopqrstuvwxyz";	
	randomnumber = Math.floor((Math.random() * 10) +1);	
    newarray = [];
    newword = "";	


    for (var i =0; i < randomnumber; i++){
  	randomnumber2 = Math.floor((Math.random() * 10) +1);
    newword += alphabet[randomnumber2];
     	
    	
    }
    return newword;


	}

// generates an array of strings, as many as int. 
// loop uses int as a parameter
// calls this.random() and uses random word return value
// control flow implemented to exclude entries less than
// one letter long
// when this happens i-- is used to take the loop a step back

	this.generate = function(int){
	newStringArray = [];	
	
	for (var i = 0; i < int; i++){
	randomword = this.random();	


	if (randomword.length > 1){
	newStringArray.push(randomword);
	}	
	else {
		console.log(randomword + " Not greater than 1 character rejected");
		i--;
	}
}
	console.log(newStringArray);
	return newStringArray;
	
}

};


//DRIVER

//RELEASE 0
longestphrase = new LongestPhrase(["once upon a time", "twice upon a couple times", "coffee is my fav"])
longestphrase = new LongestPhrase(["wide eyed with a heart filled with freight", "You were all I ever longed for", "haha Mumford lyrics"])


//RELEASE 1
check = new CheckKey({name: "Steven", age:54}, {name: "Tamir", age:54});
check.keys();


//RELEASE 2
check.generate(5);
