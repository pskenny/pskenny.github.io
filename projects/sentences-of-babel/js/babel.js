const letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i",
    "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u",
    "v", "w", "x", "y", "x", " ", ",", "."
]
const messageLength = 23;

// https://werxltd.com/wp/2010/05/13/javascript-implementation-of-javas-string-hashcode-method/

function generateSentence() {
    var message
        // Add 23 random letters to message
    for (var i = 0; i < messageLength; i++) {
        var index = Math.floor(Math.random() * letters.length)
        message += (letters[index])
    }
    console.log(message)
}

generateSentence()