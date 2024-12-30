let phrase: String = "The quick brown fox jumps over the lazy dog"
let numberOfFoxes: Int = (1+1) // 2
let numberOfAnimals: Int = 2

let avarageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
print(avarageCharactersPerWord)

// 상수는 수정 불가능
// phrase = "The quick brown fox jumps over the lazy dog"

var anoatherPhrase: String = phrase
anoatherPhrase = "The quck brown fox jumps over the lazy "
print(phrase)
print(anoatherPhrase)
