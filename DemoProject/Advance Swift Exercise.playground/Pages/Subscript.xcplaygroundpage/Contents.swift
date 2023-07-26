//: [Previous](@previous)

import Foundation

// 13.  Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.

class Weeks {

    var days = ["Sunday", "Monday", "Tuesday","Wednesday", "Thursday", "Friday", "Saturday"]

    subscript(index:Int) -> String {
    return days[index % days.count]
    }
    
}

var dayofWeek = Weeks()
print(dayofWeek[0])
print(dayofWeek[8])

// 14.  Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.

class WeeksSubscript {

    var days = ["Sunday", "Monday", "Tuesday","Wednesday", "Thursday", "Friday","Saturday"]

    subscript(index: Int) -> String {
    if index >= 0 || index <= 7 {
    return days[index]
    }else{
    print("please add 0 to 6")
    return "please add 0 to6"
    }

    }

}

var dayofWeekSubscript = WeeksSubscript()
print(dayofWeekSubscript[0])
print(dayofWeekSubscript[8])

// 15.  Create one swift subscript program which takes range as input and returns the string between the ranges.

// 16.  I have one integer array and create one function which takes range as input and returns all elements between the range.

class Range {

    var strOne: String

    init(_ strOne:String){
    self.strOne = strOne
    }

    subscript(index1:Int, index2: Int) -> String {
    let ind1 = strOne.index(strOne.startIndex, offsetBy: index1)
    let ind2 = strOne.index(strOne.startIndex, offsetBy: index2)
    let range = ind1...ind2
    let str = strOne[range]
    return String(str)
    }

}

var range = Range("Darshan")
print(range[0,3])

// 17.  I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.

    //•    Output: let array = [[1: “Hello”], [2:“Hi”]] Now call function subscript(at: 1) it should print "Hello”

class ArrayOfDictionary {
    var array: [[Int: String]] = [[1: "Darshan"], [2: "Dangar"], [3: "Shyam"]]

    subscript(index: Int) -> String {
        for i in array  {
            if i[index] != nil {
                return i[index]!
                
            }
        }
        return "not found"
    }
}

var dicthjhj = ArrayOfDictionary()
dicthjhj[3]

//class Dictionary {
//
//    let arrayOfDict = [[1: "Hello"], [2: "Hi.."]]
//
//    subscript(digit:Int) -> String {
//        for i in arrayOfDict {
//            return i[digit] ?? "nil"
//        }
//    }
//    return i[digit]
//}
//
//var dict = Dictionary()
//dict[1]

//18.  Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.

class PersonDeatil {

    var name: String
    var age: Int
    var birthdate:String
    //var person: [PersonDeatil]
    
    init(name: String,age: Int, birthdate: String) {
    self.name = name
    self.age = age
    self.birthdate = birthdate
//    self.person = PersonDeatil
    }
    
    subscript(name:String) -> PersonDeatil {
        return PersonDeatil(name: name, age: self.age, birthdate: self.birthdate)
    }

}

var person = PersonDeatil(name: "Darshan", age: 21, birthdate: "28/10/2001")
person["Darshan"]


//class Deatils {
//
//    var person: [PersonDeatil]
//
//    init(person:[PersonDeatil]) {
//        self.person = person
//    }
//
//    subscript(name:String) -> PersonDeatil {
//        return PersonDeatil(name: name, age: self.age, birthdate: self.birthdate)
//    }
//
//}

// 19. Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer 

class Song {
    var singer: String
    var type: String
    var composer: String

    init(_ singer: String, _ type: String, _ composer: String) {
    self.singer = singer
    self.type = type
    self.composer = composer
    }

    func isPlay() {
    print("music is playing")
    }
    
}

class HipHop: Song {
    
    var earn: Double
    
    init(_ earn: Double, _ singer: String, _ type: String, _ composer: String) {
        self.earn = earn
        super.init(singer, type, composer)
    }
    
    override func isPlay() {
    print("This song type is: \(self.type), singer name is: \(self.singer), composer name is: \(self.composer) and this song earning is: \(self.earn)")
    }
    
}

class Classical: Song {
    var earn: Double
    
    init(_ earn: Double, _ singer: String, _ type: String, _ composer: String) {
    self.earn = earn
        super.init(singer, type, composer)
    }
    
    override func isPlay() {
    print("This song type is: \(self.type), singer name is: \(self.singer), composer name is: \(self.composer) and this song earning is: \(self.earn)")
    }
    
}

var song = Song("A R Raheman", "Clasical", "xyz Comp")
song.isPlay()
var hiphop = HipHop(2500000, "A r", "compney", "xyz")
hiphop.isPlay()

// 20.  Create a swift class with properties which can be read-write outside of class.

class PropertiesMutable {
    
    var employeeName: String
    var employeeId: Int
    var employeeDepartment: String

    init(_ employeeName: String, _ employeeId: Int, _ employeeDepartment: String) {
    self.employeeName = employeeName
    self.employeeId = employeeId
    self.employeeDepartment = employeeDepartment
    }
    
}

var mutableProperties = PropertiesMutable("Darshan", 17, "Native Mobile")
print(mutableProperties.employeeName)
print(mutableProperties.employeeId)
print(mutableProperties.employeeDepartment)


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
