var prompt = require("prompt-sync")()
var password = ""
while (password === "") {
    password = prompt("Enter a passwrod: ")
}
console.log("Logged in")