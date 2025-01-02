import Foundation

//runOptional()
//runFunction()
//runClass()
//runStruct()
//runEnum()
runClosure()

//let person = Person(givenName: "Jungman", familyName: "Bae")
//
//// 클래스의 복사는 주소의 복사, 같은 주소를 바라보게 됨. 변경시 같이 변경
//let person2 = person
//person2.givenName = "Jungman2"
//print(person.givenName)
//print(person2.givenName)
//// ObjectIdentifier 비교
//print(person === person2)
//
//// 구조체의 복사는 값의 복사, 다른 위치에 동일한 값을 저장함
//let point = Point(x: 10, y: 20)
//var point2 = point
//point2.x = 30
//print(point.x)
//print(point2.x)
//// print(point === point2) 구조체는 객체 비교 불가


protocol Describable {
    var description: String { get }
}

struct Person: Describable {
    let name: String
    let age: Int
    
    var description: String {
        return "Person: \(name), \(age)"
    }
}

let person = Person(name: "Jungman", age: 20)
print(person.description)

protocol Movable {
    func move(to point: CGPoint)
}

class Car: Movable {
    var postion: CGPoint = CGPoint(x: 0, y: 0)
    
    func move(to point: CGPoint) {
        postion = point
        print("Car moved to \(point)")
    }
}

let car = Car()
car.move(to: CGPoint(x: 10, y: 20))
print(car.postion)

protocol Named {
    init(name: String)
    
    func displayName() -> String
}

class Person2: Named {
    func displayName() -> String {
        return "Person2: \(name)"
    }
    
    let name: String
    
    required init(name: String) {
        self.name = name
    }
}

class Friend: Person2 {
    
    required init(name: String) {
        fatalError("init(name:) has not been implemented")
    }
    
    
    let age: Int
    
}

struct Point: Named {
    func displayName() -> String {
        return "Point: \(name)"
    }
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
}



