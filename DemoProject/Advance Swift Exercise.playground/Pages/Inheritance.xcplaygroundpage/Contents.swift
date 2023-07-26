//: [Previous](@previous)

import Foundation

// 8.  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.

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
    
    init(_ earn: Double, singer: String, type: String, composer: String) {
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

var hiphop = HipHop(<#Double#>, singer: <#String#>, type: <#String#>, composer: <#String#>)

// 9.  Create one structure to show usage of mutating function in swift.

struct Mutating {
    
    var number: Int
    
    mutating func funcchange( _ num: Int) {
        number = num
    }
    
}

var changeNumber = Mutating(number: 12)
print(changeNumber.number)
changeNumber.number = 14
//changeNumber.change(12)
print(changeNumber.number)

// 10.  Create one class inheritance demo to show usage of method overriding.

class Construction {
    
    var type: String
    var material:String
    
    init(type: String,material: String) {
        self.type = type
        self.material = material
    }
    
    func price(_width: Double, _ height: Double) {
        var price = width * height * 7000
        print(price)
    }
    
}

class Flat: Construction {
    
    var address:String
    
    init(address:String, type: String, material: String) {
        self.address = address
        super.init(type: type, material: material)
    }
    
    override func price(_width width: Double, _ height: Double) {
        let price = width * height * 7000
        print(price)
    }
    
}

var flat = Flat(address: "Ahmedabad", type:"Flat", material: "Best Quality")
flat.price(200,100)

// 11.  Create one swift class to show usage of type methods.

// 12.  Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)

class Area {
    
    static func circleArea(radius: Double) {
        print(3.14 * radius * radius)
    }
    
    class func squareArea(side: Double) {
        print(side * side)
    }
    
}

class ShapeArea: Area {
    
    override class func squareArea(side: Double) {
        print(side * side)
    }
    
    // override staticfunc circleArea(radius: Double) {
    // print(3.14 * radius * radius)
    // }
    
}

var square = ShapeArea.squareArea(side: 5)


