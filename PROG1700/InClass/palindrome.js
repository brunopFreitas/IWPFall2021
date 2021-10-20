var prompt = require("prompt-sync")()
var word = prompt("Enter a word: ")
var count = 0
for (var i=0;i<=word.length-1;i++) {
    console.log(word[word.length - 1 -i], word[i])
    if (word[word.length - 1 -i] === word[i]) {
        console.log("Comparing: " + word[word.length - 1 -i], word[i])
        count++
        console.log(count)
    } else {
        count--
        console.log(count)
    }
}
console.log(count, word.length)
if (count !== word.length) {
    console.log("It is not a palindrome")
} else {
    console.log("It is a palindrome")
}
