import UIKit

var greeting = "Hello, playground"

protocol FullName {
    var fullname: String { get }
}
struct PersonProtocol: FullName {
    var fullname: String {
        get {
            return self.fullname
        }
    }
}

var person1 = PersonProtocol()
person1.fullname

print(person1.fullname)

protocol A {
    var a: Int { get }
}

class B: A {
    var a: Int {
        get {
            return 5
        }
    }
}

var b = B()
print(b.a)
