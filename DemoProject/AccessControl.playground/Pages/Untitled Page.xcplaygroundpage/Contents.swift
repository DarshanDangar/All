import UIKit

var greeting = "Hello, playground"

public class AccessControl {
    public var publicData = "This is public data"
    var internalData = "This is internal data"
    private var privateData = "This is private data"
    
    func priv() {
        var priva = privateData
    }
    
}

class Access {
    var accesspublic = AccessControl().publicData
    var accessinternal = AccessControl().internalData
    var accessPrivate = AccessControl()
}

print(Access().accesspublic)
print(Access().accessinternal)


//static vs class

class Person {
    static var name: String{
        return name
    }
    class var age: Int {
        return age
    }
}


class Student: Person {
    override class var age: Int {
        return age
    }
//    override static var name: String {
//        return name
//    }
    //error can not override static property
    
}

