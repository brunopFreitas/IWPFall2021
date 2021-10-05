var prompt = require("prompt-sync")()
var colour1 = prompt("Enter the first colour: ")
var colour2 = prompt("Enter the second colour: ")

if ( (colour1==="red")&&(colour2==="yellow") || 
    (colour1==="yellow")&&(colour2==="red")) {
        console.log("orange")
    }
else if ( (colour1==="blue")&&(colour2==="yellow") || 
    (colour1==="yellow")&&(colour2==="blue")) {
        console.log("violet")
    }