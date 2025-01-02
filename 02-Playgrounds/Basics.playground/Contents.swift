import Foundation

//runOptional()
//runFunction()
//runClass()
//runStruct()
//runEnum()
//runClosure()
runProtocol()

protocol Payable {
    func calculateWages() -> Double
}

protocol TimeOffRequestable {
    func requestTimeOff(days: Int) -> Bool
}

func processEmployee(employee: Payable & TimeOffRequestable) {
    let wages = employee.calculateWages()
    let timeOffRequested = employee.requestTimeOff(days: 10)
}

protocol Container {
    associatedtype Item
    mutating func add(_ item: Item)
    var count: Int { get }
}

struct IntStack: Container {
    typealias Item = Int
    private var items: [Int] = []
    
    mutating func add(_ item: Int) { items.append(item) }
    var count: Int { items.count }
}

protocol Describable {
    var description: String { get }
}

func printDecription<T: Describable>(_ item: T) {
    print(item.description)
}

protocol Runnable {
    func run()
}

protocol Swimmable {
    func swim()
}

protocol Flyable {
    func fly()
}

struct Bird: Flyable, Runnable {
    func fly() { print("Flying") }
    func run() { print("Running") }
}

struct Fish: Swimmable {
    func swim() { print("Swimming") }
}

struct Duck: Flyable, Runnable, Swimmable {
    func fly() { print("Flying") }
    func run() { print("Running") }
    func swim() { print("Swimming") }
}

let duck = Duck()
duck.fly()
duck.run()
duck.swim()
