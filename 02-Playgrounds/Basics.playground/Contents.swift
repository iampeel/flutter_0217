import Foundation

//runOptional()
//runFunction()
//runClass()
//runStruct()
//runEnum()

let simpleClosure = { print("Hello World") }

simpleClosure()

//let multiply: (Int, Int) -> Int = { (x: Int, y: Int) -> Int in
//    return x * y
//} => 아래와 같이 한 줄로 표현 가능
let multiply: (Int, Int) -> Int = { x, y in x * y }

print(multiply(5, 6))

func performOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let addition: (Int, Int) -> Int = { x, y in x + y }

let result = performOperation(5, 6, operation: multiply)
print(result)

let result2 = performOperation(5, 6, operation: addition)
print(result2)

// 인라인 함수 정의
let result3 = performOperation(5, 6, operation: { x, y in x - y })
print(result3)

// 후행 클로저
let numbers = [1, 2, 3, 4, 5]
//let squaredNumbers = numbers.map { element in element * element }
let squaredNumbers = numbers.map { $0 * $0 }
print(squaredNumbers)

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementer = makeIncrementer(incrementAmount: 5)
print(incrementer()) // 5씩 증가
print(incrementer()) // 5씩 증가

let incrementer2 = makeIncrementer(incrementAmount: 10)
print(incrementer2()) // 10씩 증가
print(incrementer2()) // 10씩 증가
