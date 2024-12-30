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

var phraseInfo = "The phrase" + " has: "
//phraseInfo = 1 타입 추론(문자열)으로 생성되었기 때문에, 다른 타입(정수형)의 값을 가질 수 없다.


phraseInfo += "\(numberOfFoxes) foxes" // 다음과 동일함: phraseInfo = phraseInfo + "\(numberOfFoxes) foxes"

var i = 1
i += 1
print(i)

print("Number of characters: \(phrase.count)")
