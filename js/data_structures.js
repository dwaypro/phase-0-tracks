function Car(color,make,model){	
	this.color = color;
	this.make = make;
	this.model = model;
	this.trips = [];

	this.speed = function(){	

	console.log(model + "  is now traveling at 150 mph!");	

	}

	this.visited = function(){

	console.log("places we've been: " + this.trips);	
	}

	this.addTrips = function(destination){
	this.trips.push(destination);	
	this.visited();

	}

};

car = new Car("Red", "Toyota", "Camary");

car.speed();
car.add_trips("pluto");
car.add_trips("New York")

//car.visited();