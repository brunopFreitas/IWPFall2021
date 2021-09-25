//Part C - Assignment 1

console.log("Let's calculate the square root of some second degree equations")
console.log("Second degree equations are those with the following layout: " + "ax²+bx+c=0")
console.log("Please inform the values for the variables 'a', 'b' and 'c'")
var prompt = require("prompt-sync")()
var a = prompt("Enter the value for the variable 'a': ")
console.log("The value you entered for 'a' is: " + a)
var b = prompt("Enter the value for the variable 'b': ")
console.log("The value you entered for 'b' is: " + b)
var c = prompt("Enter the value for the variable 'c': ")
console.log("The value you entered for 'c' is: " + c)
//Calculating the first square root
var firstSquareRoot = (- b - (Math.sqrt(Math.pow(b,2) - 4*a*c)))/2*a
//Calculating the second square root
var secondSquareRoot = (- b + (Math.sqrt(Math.pow(b,2) - 4*a*c)))/2*a 
console.log("The square roota are" + `\nx1=${firstSquareRoot}\nx2=${secondSquareRoot}`)
console.log("End of the program")