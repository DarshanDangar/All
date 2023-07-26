import UIKit

var greeting = "Hello, playground"
let p = {

    print("in closure")

}
p()
print(type(of: p))

let optBirthday1 : (String?)->() =  { wish in // Closure expression

    // print("happy birthday \(wish)")
    //wish = ""
    if let name = wish {
        print("binded")
        print(type(of: name))
    }
    print(type(of: wish))
}

var ghi : String?
ghi = "sff"

optBirthday1(ghi)
print(type(of: optBirthday1))

let greetinga:(String, String) -> String = { return " Good \($0), \($1)! " }
let sdfj = greetinga("good","morning")
print(sdfj)
let namexx = "dfdf"


let consf = { // we can use parent scope variable in closure
    print("dfdfd",namexx)
}

consf()

let vart = 5

let vay = {
    print(vart)
}
vay()
func gh() {
    consf()
    print("closure used")
}
gh()

func aer(name: String) -> String {
    let y = 3
    let b = {
        return "name is : \(name) and y is: \(y) and vart is: \(vart)"
    }
    return b()
}
aer(name: "Darshan")


func xf(cls: () -> ()) {
    print("func is called")
    cls()
}
xf {
    print("closure called")
}

func df(cl: () -> (),cl2: () -> ()) {
    print("func is called")
    cl()
    cl2()
}
df(cl: {
    print("cl1 called")
}, cl2: {
    print("cl2 is called")
})

struct X {
    var f: Int

}

//x(f:nil)
var t = X(f: 5)
type(of: t)

struct A {
    var a: Int = 7
    //    init() {
    //        a = 6
    //
    //    }
}
var aa = A(a:7)
print(aa.a)

//without using init

//struct A {
//    var a: Int
////    init() {
////        a = 5
////
////    }
//}
//var aa = A(a: 5)
//print(aa.a)

class Q {
    var a: Int
    init(){
        a = 5
    }
}

var q = Q()
print(q.a)

//class Q {
//    var a: Int = 5
////    init(){
////        a = 5
////    }
//}
//
//var q = Q()
//type(of: q)
//print(q.a)

//customizes initializations

struct Ad {
    var a: Int
    init(b: Int){
        a = b
        print("a is assign value :\(a)")
    }
}
Ad(b: 5)

class Dsa {
    var t: Double
    init(h: Double) {
        t = h
        print("t is assigned and its value is: \(t)")
    }
    init(p: Double) {
        t = p + 5
        print(t)
    }
}
Dsa(h: 5)
Dsa(p: 6)

struct Da {
    var v: Int = 0 ,b: Int,n: Double
    init(v: Int, b: Int, n: Double) {
        self.v = v
        self.b = b
        self.n = n
    }
    init(b: Int, n: Double) {
        self.b = b
        self.n = n
    }

}

//print(Da().v)
var x = Da(b: 5, n: 6)
print(x)
type(of: x)
print()

var y = Da.init(b: 5, n: 4)
print(y.b)

// initializer without parameter
//used _ (unnamed parameter)
struct Fd {
    var t: String
    init(_ t: String) {
        self.t = t
        print(t)
    }
}
Fd("Darshan")

//optional property types

class Fgh {
    var gh: Int
    var fgh: Double?
    init(gh: Int) {
        self.gh = gh
        print(gh)
    }
}
Fgh(gh: 56)

class Nhj {
    var gh: Int
    var fgh: Double?
    init(gh: Int) {
        self.gh = gh
    }
    func uy(){
        print(gh)
    }
}
Nhj(gh: 5).uy()

struct Hjk {
    var x = 5, z = 5
}
Hjk(x: 25, z: 58)
//var ty =
print(Hjk(x: 8,z: 8))

// initialization delegation for value type

struct Klm {
    var a = 0
    var p = 0
}

struct Lmn {
    var q = 0,r = 0
}

struct KKj {
    var df: Klm
    var gh: Lmn
    //    init(df: Klm, gh: Lmn) {
    //        self.df = df
    //        self.gh = gh
    //    }
}
var bh = (KKj(df: Klm(a: 5, p: 8), gh: Lmn(q: 10,r: 65)).df.p)

//class Ds {
//    var a: Int, b: Int
//    init(a:Int, b: Int) {
//        self.a = a
//        self.b = b
//    }
//    convenience init(a: Int){
//
//        self.init(a: a, b: 5)
//        self.a = a
//
//
//    }
//}

//convenience initialization
class Ghj {
    var u: Int
    var v: Double
    var z: Int?
    init(u: Int,v: Double) {
        self.u = u
        self.v = v

    }
    convenience init(z: Int) {
        self.init(u: 0, v: 0)
        self.z = z
    }
}

Ghj(z: 5)


//Designated and convenience initializers in action

class Op {
    var op: Int
    init(op: Int){
        self.op = op
        print("op is used in init method")
    }
    convenience init(){
        self.init(op: 8)
        print("op is used in convenience method")
    }
}

Op(op: 5)
Op()

//class Food {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    convenience init() {
//        self.init(name: "[Unnamed]")
//    }
//}
//
//let namedMeat = Food(name: "Bacon")
//
//class RecipeIngredient: Food {
//    var quantity: Int
//    init(name: String, quantity: Int) {
//        self.quantity = quantity
//        super.init(name: name)
//    }
//    override convenience init(name: String) {
//        self.init(name: name, quantity: 1)
//    }
//}


//failable initialization

struct Fghj {
    var jk: Int
    init?(jk: Int){
        //        if jk.words.isEmpty {
        //            return nil
        //        }
        self.jk = jk
        print(jk)
    }
}
Fghj(jk: 5)

//failable initialization for enumeration

enum ram {
    case a,b,c
    init?(symbol: Character){
        switch symbol{
        case "A":
            self = .a
            print("A is called")
        case "B":
            self = .b
            print("B is called")
        case "C":
            self = .c
            print("C is called")
        default:
            return nil
        }
    }
}

var ghj = ram(symbol: "A")
ram(symbol: "0")

//required initializer
class Op1 {
    var op: Int
    required init(op: Int){
        self.op = op
        print("op is used in init method")
    }
}

class Op2 : Op1 {

}

//de initialization

class Yui {
    var ghl: Int
    init(ghl: Int){
        self.ghl = ghl
        print("initialized ghl \(ghl)")
    }
    deinit
    {
        print("memopry deallocated")
    }
}

var res: Yui? = Yui(ghl: 5)
res = nil

class JIko {
    var jik : Int
    required init(jik: Int) {
        self.jik = jik
    }
}

class HUY: JIko {
    var hju: Int
    init(hju: Int) {
        self.hju = hju
        super.init(jik: 5)


    }

    required init(jik: Int) {
        self.hju = 5
        print("init(jik:) has not been implemented")
        super.init(jik: jik)
    }

}

//inheritance
class Iuj {
    var t: Int
    init (t: Int) {
        self.t = t
    }
}

class Yuip:Iuj {
    var bu: Int = 5
}

let yu = Yuip(t: 10)
yu.t = 80

//
class Wer {
    var ty:Int = 5
}
class Der: Wer {
    var th: Int = 8
}

Der()
Der().th = 5


class Tyu {
    func ty() {
        print("super class is called")
    }
}
//method overriding

class Uyt: Tyu {
    override func ty() {
        //super.ty()
    }
    func ji(){
        print("sub class is called ji")
    }
}

var gfuh = Uyt()
gfuh.ty()
//gfuh.ji()

//Hierarchical
class Add {
    var a = 5
}

class Bdd:Add {
    var b = 6
}
class Cdd: Add {
    var c = 8
    // var h = Add().a
}

var ty = Cdd().c
//var sy = Cdd().b
//Cdd().h
//var ui = Cdd.a

//stored property and
//stored property of constant structure instance

struct Afg {
    var hj: Int
}
var ran = Afg(hj: 5)

struct FLR {
    var fv: Int = 8
    let len: Int

}

var rotI = FLR(fv: 5, len: 3)
print(rotI)
//rotI.len = 5
//this is constant therefore not change value


//lazy var property

class Hkji {
    init() {
        print("hkji is initialized")
    }
}
class JJ {
    var jjj = Hkji()
    init(){
        print("JJ is initialized")
    }

}
var jik = JJ()

class Hkji1 {
    init() {
        print("hkji is initialized")
    }
    deinit {
        print("hkji is deinitialized")
    }
}
class JJ1 {
    lazy var jjj = Hkji()
    init(){
        print("JJ is initialized")
    }
    deinit{
        print("JJ is de initialized")
    }

}
var jik1 = JJ1()
jik1.jjj

struct Fgho {
    var adf: Int
    lazy var hgh: Int = 5
}

Fgho(adf: 5)



//stored properties and computed property

class Property {
    //stored property
    var num1: Int = 0
    var num2: Int = 0

    //computed property
    var sum: Int {
        return num1 + num2
    }
}

var objProperty = Property()
objProperty.num1 = 5
objProperty.num2 = 6
var add = objProperty.sum
print(add)

// getter and setter property

class GetSet{
    var num1: Int = 0
    var num2: Int = 0

    var sum: Int {
        get {
            num1 + num2
        }

        set  {
            //here newvalue is sorted setter decleration
            num1 = newValue + num1
            num2 = newValue + num2

        }
    }

}

var addition = GetSet()
addition.num1 = 8
addition.num2 = 10
addition.sum
print(addition.sum)
addition.num1
addition.num2
addition.sum = 5

addition.num1
addition.num2

//read only computed property
struct Calc {
    var sum = 0, sub = 0, mul = 0
    var volume: Int {
        return sum + sub + mul
    }
}
var calc = Calc(sum: 5,sub: 8,mul: 12)
print(calc)
calc.volume

//property observer

class Observer {
    var count: Int = 0 {
        willSet(newv){
            print("new count is : \(newv)")
        }
        didSet{
            //print("new count is coming: \(count)")
            count += oldValue
            print("current count is :\(count)")
        }
    }
}

var count = Observer()
count.count = 200

count.count = 250

//property wrapper

@propertyWrapper
struct Araper {
    var num1: Int = 0
    var wrappedValue: Int {
        get {
            num1
        }
        set {
            num1 = min(newValue, 12)
        }
    }
}

struct UsewrapProprty {
    @Araper var num: Int

}
var useproperty = UsewrapProprty()
useproperty.num = 10
//useproperty.
print(useproperty.num)

useproperty.num = 25
print(useproperty.num)

@propertyWrapper
struct Second {
    var num1 = 0
    var wrappedValue: Int {
        get{
            num1
        }
        set{
            num1 = newValue
        }
    }
}

class UseWraper {
    @Second var num: Int
}

var usePropertyInClass = UsewrapProprty()
usePropertyInClass.num = 5
print(usePropertyInClass.num)

@propertyWrapper
class ImplicitValue {
    var num1: Int
    var maximum: Int
    var wrappedValue: Int {
        get
        {
            num1
        }
        set{
            num1 = newValue

        }

    }
    init(){
        num1 = 0
        maximum = 0
    }
    init(num1: Int){
        self.num1 = num1
        maximum = num1
    }
    init(num1: Int, maximum: Int){
        self.num1 = num1
        self.maximum = maximum
    }

}

struct Implicit {
    @ImplicitValue var num: Int
    @ImplicitValue var max: Int
}

var implicitValue = Implicit()
print("\(implicitValue.num) \(implicitValue.max)")
implicitValue.max = 5
print(" \(implicitValue.max)")

@propertyWrapper
class CheckValue {
    var num: Int
    var projectedValue: Bool
    var wrappedValue: Int {
        get{
            return num
        }
        set{
            if newValue > 21{
                num = 21
                projectedValue = true
            }else{
                num = newValue
                projectedValue = false
            }
        }
    }
    init(){
        self.num = 0
        self.projectedValue = false
    }
}

class Testing {
    @CheckValue var num: Int
    init(){
        self.num = num
    }
}

var testing = Testing()
testing.num = 25
print(testing.num)
print(testing.$num)

//type property syntax
//class vs static class allow overrides and static dont allow overrides

class Static {
    static var staticvariable: Int {
        return 5
    }
    class var classVariable: Int {
        return 6
    }

}
class Override: Static {
    override class var classVariable: Int{
        return 61
    }
}

//

//class Threshold {
//    static var threshold = 10
//    static var maxLevel = 0
//    var currentLevel: Int {
//        get{
//            self.currentLevel
//        }
//        set{
//            if newValue < Threshold.threshold{
//                self.currentLevel = Threshold.threshold
//            }else if newValue > Threshold.maxLevel {
//                Threshold.maxLevel = self.currentLevel
//
//            }
//        }
//    }
//
//}
//
//
//var setThreshold = Threshold()
//setThreshold.currentLevel = 5
//print(setThreshold.currentLevel)
//print(Threshold.maxLevel)


//Methods

var countinc = 0

func increment() {
    countinc += 1
}
increment()


class Method {
    func increment() {
        countinc += 1
    }
}

var m1 = Method()
m1.increment()
print(countinc)

var m2 = Method()
m2.increment()
print(countinc)


struct Modify {
    var x = 0
    var y = 0

    mutating func change(a: Int,b: Int) {
        x = a
        y = b
    }



}

var modify = Modify()
modify.change(a: 5, b: 4)
print(modify)
modify.change(a: 4, b: 5)
print(modify)

//subscripts
//var sub = 0
//subscript(i: Int) -> Int {
//    get{
//        return i
//    }
//    set(newValue) {
//        sub = newValue
//    }
//}

struct Table {
    var index: Int

    subscript (i: Int,j: Int, k: Int) -> (Int,Int,Int) {
        return (index * i, index * j, index * k)
    }
}

var table = Table(index: 5)
//table[5]
table[5,6,7]

//

class Subscript{
    var arr = [1,2,3,4,5]
    subscript(i: Int) -> Void {

        arr[i] = 5


    }
}
var useSubscript = Subscript()
useSubscript[1]
print(useSubscript[1])
print(useSubscript.arr)

//type subscript

class SubScript {
    var oldValue = 0

    static subscript(i: Int) -> Void {
        print("sub")
        return
    }
}

var staticsubscript = SubScript()
SubScript[1]

//optional Chaining

class Optional {
    var person: WithoutOptional?
}
class WithoutOptional {
    var age: Int = 5
}

var useOptional = Optional()
useOptional.person = WithoutOptional()

if let useOptionalUnwrap = useOptional.person?.age{
    print("\(useOptionalUnwrap)")
}else
{
    print("Please try again")
}


class Name {
    var name: String
    var age: Int?
    init(name: String){
        self.name = name
        //self.age = age
    }
}
class Student{
    var deatils: Name?
}

var student = Student()
student.deatils = Name(name: "Darshan")
student.deatils!.age

//Defining Model class for optional chaining
class OptChaining {
    var name: String?
    var age: String?
    var mono: String?

    func fullDeatils() -> String? {
        if let name = name, let age = age, let mono = mono{
            return "name: \(name) , age: \(age), mono: \(mono)"
        }else{
            return nil
        }
    }
}

var optChaining = OptChaining()
optChaining.name = "Darshan"
optChaining.age = "21"
optChaining.mono = "96875xxxxx"

optChaining.fullDeatils()

// Accessing properties through optional chaining

var optChainingOne = OptChaining()
optChainingOne.name = "Shyam"
optChainingOne.age = "21"
optChainingOne.mono = "xxxxxxxxxx"

func fullDeatil() -> OptChaining {
    print("function called")
    var fullDEatil = OptChaining()
    fullDEatil.age = "50"
    fullDEatil.name = "Shubham"
    return fullDEatil
}
fullDeatil()
fullDeatil().name
fullDeatil().age
fullDeatil().mono
fullDeatil().fullDeatils()

//Accessing Subscripts through optional chaining

struct House {
    var houseno: String
    var housename: String?
    subscript(houseno: String) -> String {
        get{
            return houseno
        }
        set{
            self.houseno = houseno
        }
    }
}

var house = House(houseno: "5")

house.housename = "jkh"
house["5"] = "7"
print(house)

//Accessing subscripts thrugh optional chaining

//var arrayofName = ["Darshan", "Shyam", "Shubham"]
//
//arrayofName[0][0] = "Shyam"
//print(arrayofName)
//
//var arrayofDictionary = [0: "Darshan",1: "Shyam",2: "Shubham"]
//arrayofDictionary[0]?[0] = "fgfg"

//

class SubScrip {
    var name: [Int] = []
    var age: Int?

    subscript (i: Int, j: Int) -> (Int,Int) {
        get{
            return (i,j)
        }
        set{
            name[i] = j
        }
    }
}

//Linking multiple Level


class Rectangle {
    var print1: Circle?
}

class Circle {
    var area = [Radius]()
    var areacount: Int {
        return area.count
    }
    subscript(i: Int) -> Radius {
        get{
            return area[i]
        }
        set{
            area[i] = newValue
        }
    }
    func circleprint() {
        print("The number of rooms: \(areacount)")
    }
    var rectarea: Circumference?
}

class Radius {
    let radiusname: String
    init(radiusname: String){
        self.radiusname = radiusname
    }
}

class Circumference {
    var circumName: String?
    var circumNumber: String?
    var circumArea: String?

    func buildingIdentifier() -> String? {
        if circumName != nil {
            return circumName
        }else if circumNumber != nil {
            return circumNumber
        }else {
            return nil
        }
    }
}

//let cirName = Rectangle()
//cirName.print1[0] = Radius(radiusname: "Diameter")
//let printing = Circle()
//
//printing.area.append(Radius(radiusname: "units"))

//let circname = Rectangle()
//circname.print1 = Circle()
//circname.print1?
//
//if let radiusName = circname.print1?[0].radiusname {
//   print("The first room name is \(radiusName).")
//} else {
//   print("Radius is not specified.")
//}

let circname = Rectangle()
circname.print1?[0] = Radius(radiusname: "Diameter")
let printing = Circle()

printing.area.append(Radius(radiusname: "Units"))
printing.area.append(Radius(radiusname: "Meter"))
circname.print1 = printing

if let radiusName = circname.print1?[0].radiusname {
    print("Radius is measured in \(radiusName).")
} else {
    print("Radius is not specified.")
}



//error handling

//var number = 10
//var deminator = 0
//
//var result = number / deminator
//generate error


//step1: create enum for error

enum DivisionError: Error {
    case dividedbyZero
}

func division(number: Int, deminator: Int) throws {
    if deminator == 0 {
        throw DivisionError.dividedbyZero
    }else {
        let result = number / deminator
        print(result)
    }
}
do{
    try division(number: 10, deminator: 2)
    print("Valid Divisioble")
}
catch DivisionError.dividedbyZero {
    print("Error: Deminator cannot be 0")
}

//Disable Error handling

try? division(number: 10, deminator: 0)
//try? not need handle error

// try! is when nil then crash otherwise runtime error

//enum VendingMachineError: Error {
//    case invalidSelection
//    case insufficientFunds(coinsNeeded: Int)
//    case outofstock
//}
//
//throw VendingMachineError.insufficientFunds(coinsNeeded: 5)
//
//var vendingMachine = VendingMachineError()

//converting error to optional values

enum OptionalEnum {
    case optional
}

//func someThrowingFunction() throws -> Int {
//    return
//}


//type casting

class Media {
    var name: String
    init(name: String){
        self.name = name
    }
}

class Music: Media {
    var singer: String
    init(name: String, singer: String){
        self.singer = singer
        super.init(name: name)
    }
}

class Movie: Media {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}


var lib = [Movie(name: "RRR", director: "SSRajamoli"),
           Music(name: "Okho to duniya thi nokho", singer: "Rajbha Gadhvi"),
           Movie(name: "KGF", director: "i dont know"),
           Music(name: "Ranzah", singer: "i dont kn")]

var movieCOunt = 0
var musicCount = 0

for i in lib {
    if i is Music {
        musicCount += 1
    } else if i is Movie{
        movieCOunt += 1
    }
}

//DownCasting

for i in lib {
    if let music = i as? Music {
        print("Music name is: \(music.name) and singer is: \(music.singer)")
    } else if let movie = i as? Movie {
        print("Movie name is: \(movie.name) and it's director is: \(movie.director)")
    }
}

//Nested Types

class Employee {
    var department = Department()
    class Department {
        var empId = 7
        var empName = "Darshan Dangar"
        func details() -> String {
            return "employee Id: \(empId) , Employee Name: \(empName)"
        }
    }
}

var employee = Employee()
print(employee.department.details())


class StudentNested {
    enum StudentType {
        case inteligence
        case good
        case average
    }
    func type() -> StudentType {
        return .inteligence
    }

}
class Teacher {
    var name = StudentNested()
    var type: StudentNested.StudentType
    init() {
        self.type = name.type()
    }
}
var result = StudentNested.StudentType.good
print(result)


class Car {
    var name: String
    var color: String
    var type: String
    init(name: String, color: String, type: String) {
        self.name = name
        self.color = color
        self.type = type
    }
}

class Fortuner: Car {
    var price: String
    var maxspeed: Int

    init(price: String, maxspeed: Int) {
        self.price = price
        self.maxspeed = maxspeed
        super.init(name: "FORTUNER", color: "White", type: "Suv")
    }
}

var fortuner = Fortuner(price: "45,00,000", maxspeed: 280)

class Vehicle {
    var car = Car(name: "RR", color: "Gold", type: "luxuriy")
}

var vehicle = Vehicle().car
vehicle.type

//extension
class Temperature {
    var celcius: Double = 0
    func setTemp(celcius: Double) {
        self.celcius = celcius
        print("Celcius: \(celcius)")
    }
}
//use of extension
extension Temperature {
    func convert() {
        var fehrenheit = (celcius * 1.8) + 32
        print("fehrenheit: \(fehrenheit)")
    }
}

var temp = Temperature()
temp.setTemp(celcius: 16)
temp.convert()

//computed properties
class CircleExtension {
    var radius: Double = 0
}

extension CircleExtension {
    var area: Double {
        return 3.14 * radius * radius
    }
}

//# Extensions must not contain stored properties : Error
//extension CircleExtension {
//    var rect = 500
//}

var circleExtension = CircleExtension()
circleExtension.radius = 5
print(circleExtension.area)

//initializers

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}

//default
//var rect = Rect()

//memberwise value

var newRect = Rect(origin: Point(x: 5, y: 6),size: Size(width: 8, height: 6))

//designated init use
//extension Rect {
//    init(center: Point , size: Size) {
//        self.origin = center
//        self.size = size
//    }
//}

//conveniance init

extension Rect {
    init(center: Point , size: Size) {
        self.origin = center
        self.size = size
    }
}
struct A1 {
    var a : Int
    //    init (a: Int) {
    //        self.a = a
    //    }
}
extension A1{
    init () {

        //self.init(a: 7)
        self.a = 6
    }
}
var ae = A1(a: 8)

ae.a

//methods

extension Int {
    func repeting(cl: () -> ()) {
        for _ in 0..<self{
            cl()
        }
    }
}
8.repeting {
    print(3)
}

extension Int {
    func repeated(cl: () -> ()) {
        for _ in 0..<self{
            cl()
        }
    }
}
5.repeting {
    print(5,terminator: ",")
}

//mutating instance methods

struct UseExtension {
    var b: Int
}

extension UseExtension {
    mutating func pow() {
        b = b * b
    }
}

var useExtension = UseExtension(b: 5)
print(useExtension.pow())

//subscript
//
extension Int {
    subscript(digit: Int) -> Int {
        var temp = self
        var tem = 0

        for _ in 0...digit {
            tem = temp % 10
            temp = temp / 10
        }
        return tem
    }
}

55644[2]


extension Int {
    enum Case {
        case positive,zero,negative
    }
    var cse: Case {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}
5.cse
0.cse
(-10).cse


//class GEtter {
//    var geteer : Int {
//        get {
//            return 5
//        }
//    }
//}
//var get = GEtter()
//get.geteer = 8

func checkdigit(number: [Int]){
    for i in number {
        switch i.cse{
        case .zero:
            print("0", terminator: " ")
        case .positive:
            print("+",terminator: " ")
        default:
            print("-",terminator: " ")
        }
    }
    print("")
}

checkdigit(number: [1,2,3,-15,10,0,8])
print("Hi")


//extension
extension UIViewController {
    var uiview: String{
        return "UIScene"
    }
}

extension UIViewController {
    var api: String {
        return "api data"
    }
}

//protocol

//protocol synatax

protocol SomeProtocol {
    //var someProtocol = 5
}

protocol FirstProtocol {
    // var FirstProtocol = 8
}

struct ProtocolChecked: SomeProtocol, FirstProtocol {

}

//property requirement
protocol Greet {
    var name: String { get }
    func message()
}

class EmployeeGreet: Greet {
    var name = "Darshan"

    func message() {
        print("Good Morning!", name)
    }
}

var employee1 = EmployeeGreet()
employee1.message()

//set getable and setable property

protocol Gettable  {
    var gettable: Int { get }
}

protocol GetSetProtocol {
    var getset: Int { get set }
}


protocol Sum {
    var sum: Int { get set }
}
protocol Sub {
    var sub: Int { get set }
}
protocol Multiple {
    var multiple: Int { get set }
}
protocol Divide {
    var divide: Int { get set }
}

class Calculator: Sum, Sub, Multiple, Divide {
    var addd = 0
    var sum: Int {
        get {
            return addd
        }
        set{
            addd = newValue
        }
    }
    var sub: Int {
        get{
            return addd
        }
        set{
            addd = newValue
        }
    }

    var multiple: Int {
        get{
            return addd
        }
        set{
            addd = newValue
        }
    }

    var divide: Int {
        get{
            return addd
        }
        set{
            addd = newValue
        }
    }
}

var calculator = Calculator()
calculator.sum = 5
calculator.addd
calculator.sub = 10
calculator.addd

//
protocol FullName {
    var fullname: String { get }
}
struct PersonProtocol: FullName {
    var fullname: String
}

var person1 = PersonProtocol(fullname: "Darshan")
person1.fullname

//mutating method requirements

protocol MutatingMethod {
    mutating func mutatingfunc()
}

enum Switch {
    case on, off
    mutating func mutatingfunc() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var switchProtocol = Switch.off
switchProtocol.mutatingfunc()


//initializers requirement

protocol Initializers {
    init(initilizers: Int)
}
class InitializersClass {
    var initializers: Int
    init(initializers: Int) {
        self.initializers = initializers
    }
}
var initializersClass = InitializersClass(initializers: 5)
print(initializersClass.initializers)

class SubclassInitializers: InitializersClass{
    var subInitializers: Int
    init(subInitializers: Int, initializers: Int){
        self.subInitializers = subInitializers
        super.init(initializers: initializers)
    }
}

var subinitializers = SubclassInitializers(subInitializers: 8, initializers: 9)
print("\(subinitializers.subInitializers) and \(subinitializers.initializers)")

//class implementation of protocol initializers requirement

class ProtocolInitializers {
    var initializers: Int
    init(initilizers: Int) {
        self.initializers = initilizers
    }
}

class SubProtocolInit: ProtocolInitializers, Initializers {
    var subProtocolInit: Int
    required override init(initilizers: Int) {
        self.subProtocolInit = initilizers
        super.init(initilizers: initilizers)
    }
}

//failable Initializers
protocol InitializersFailable {
    init?(initilizers: Int)
}

class ProtocolFailableInitializers {
    var initializers: Int
    init(initilizers: Int) {
        self.initializers = initilizers
    }
}

class SubProtocolFailableInit: ProtocolInitializers, Initializers {
    var subProtocolInit: Int
    required override init(initilizers: Int) {
        self.subProtocolInit = initilizers
        super.init(initilizers: initilizers)
    }
    func add() {
        print("function called inside")
    }
}


//extension Initializers {
//    func add() {
//        print("protocol extension called")
//    }
//}

var initializers = SubProtocolFailableInit(initilizers: 80)
initializers.add()


//protocol as type

protocol ProtocolAsType {
    func sum()
}

class ProtocolCheckType {
    var protocolAsType: ProtocolAsType?

    //    init( protocolAsType: ProtocolAsType){
    //        self.protocolAsType = protocolAsType
    //    }
}


var protocoltype = ProtocolCheckType()
protocoltype.protocolAsType

//optional protocol

@objc protocol OptionalProtocol {
    @objc func calc()
}

class CheckOptionalProtocol {
    var  p = 5
}

var pq = CheckOptionalProtocol()
pq.p

//delegation

struct Production {
    var productname: String = ""
    var productionTime: String = ""
}

class Product {
    var productDelegate: ProductDelegate?
    func makeProduction() {
        var product = Production()
        product.productname = "SmartPhone"
        product.productionTime = "3 Months"

        productDelegate?.productwasDone(product)
    }
}

protocol ProductDelegate{
    func productwasDone(_ product: Production)
}

class ProductShop: ProductDelegate {
    func productwasDone(_ product: Production) {
        print("product is done,please take it")
    }
}

let productShop = ProductShop()
let smartPhone = Product()
smartPhone.productDelegate = productShop
smartPhone.makeProduction()

protocol Payment {
    func paymentWasDone()
}
class Shop {
    var payment: Payment?
    var iteamName: String
    var iteamPrice: Int
    init(iteamName: String, iteamPrice: Int) {
        self.iteamName = iteamName
        self.iteamPrice = iteamPrice
    }
    func paymentDone(){
        payment?.paymentWasDone()
    }

}

class PaymentCheck: Payment {
    func paymentWasDone() {
        print("Payment is done ")

    }
}

var shop = Shop(iteamName: "Cloths", iteamPrice: 1000)
shop.payment = PaymentCheck()
shop.paymentDone()


//adding protocol conformance with an extension

class ExtensionWIthProtocol{
    var extensionwithProtocol = 0
}

protocol Extension {
    func calculator()
}

extension ExtensionWIthProtocol: Extension {
    func calculator() {
        print("Extension method called")
    }
}
var extensionwithProtocol = ExtensionWIthProtocol()
extensionwithProtocol.calculator()

//conditinally conforming to a protocol

protocol Purchaseable {
    func buy()
}
struct Book: Purchaseable {
    func buy() {
        print("You bought a book")
    }
}
extension Array: Purchaseable where Element: Purchaseable {
    func buy() {
        for item in self {
            item.buy()
        }
    }
}

var purchasable = Book()
purchasable.buy()

//declaring protocol adoption with extension

protocol AboutHouse {
    var aboutHouse: String { get }
}
struct HouseProtocolUse {
    var name: String

}
extension HouseProtocolUse: AboutHouse {
    var aboutHouse: String {
       return "House is called \(name)"
    }
}

let villa = HouseProtocolUse(name: "Nivas")
let aboutHouse: AboutHouse = villa

print(aboutHouse.aboutHouse)

//Adopting a Protocol using a synthesized implementation
//equatable
struct Num: Equatable {
    var no1 = 0, no2 = 0
}
var num1 = Num(no1: 5, no2: 8)
var num2 = Num(no1: 6, no2: 8)
if num1 == num2 {
    print("Both variable are same")
}else {
    print("Both variable are not same")
}

//comparable

enum SkillLevel: Comparable {
    case beginer
    case intermediiate
    case expert(start: Int)
}

var level = [SkillLevel.intermediiate,SkillLevel.beginer,SkillLevel.expert(start: 8), SkillLevel.expert(start: 3)]
for i in level.sorted() {
    print(i)
}

//collection of protocol types

//protocol inheritance

protocol InheritOne {
    func add()
}
protocol InheritTwo {
    func show()
}

protocol Inherit: InheritOne, InheritTwo {
    func inherit()
}

class InheritProtocolClass: Inherit {
    func inherit() {
        print("use Inherit")
        add()
    }

    func add() {
        print("use InheritOne")
        show()
    }

    func show() {
        print("use InheritTwo")
    }
}

var inheritProtocolClass = InheritProtocolClass()
inheritProtocolClass.inherit()

//class only protocol

protocol ClassOnly: AnyObject {
    func area(r: Int)
}

class CircleArea: ClassOnly {
//    func area() {
//        <#code#>
//    }

    func area(r: Int) {
        var are: Int = r * r * Int(3.14)
        print(are)
    }
}

var circleArea = CircleArea()
circleArea.area(r: 5)

// ANyObject not allow struct or enum
//struct CircleSq: ClassOnly {
//
//}


//protocol Composition

protocol No1 {
    var num1: Int { get }
}
protocol No2 {
    var no2: Int { get }
}

func number(no: No1 & No2 ){
    print("no1 is \(no.num1) and no2 is : \(no.no2)")
}
struct Number: No1, No2 {
    var num1: Int
    var no2: Int
}
var num = Number(num1: 5, no2: 8)
number(no: num)

//checking for protocol connformance

protocol HasArea {
    var area: Double { get }
}

class AreaofTypeCasting: HasArea {
    var area: Double
    init(area: Double) {
        self.area = area
    }
}

class AreaOfOffice: HasArea {
    var area: Double
    var address: String
    init(area: Double, address: String) {
        self.area = area
        self.address = address
    }
}

class WithoutHAshArea {
    var width: Int
    init(width: Int){
        self.width = width
    }
}

var area: [AnyObject] = [AreaofTypeCasting(area: 5.10),
AreaOfOffice(area: 51, address: "Xyz"),
WithoutHAshArea(width: 56)]

for i in area {
    if let area = i as? HasArea {
        print("hash area is: \(area.area)")
    } else {
        print("this is other of without Hasharea")
    }
}

// @objc protocol can be adopted only by classes not for enum or struct

@objc protocol Ac {
    @objc optional func product()
}

class MakeAc {
    var productAc: Ac?
    func product(){
        if let a = productAc?.product?() {
            print(a)
        }
    }
}

var makeAc = MakeAc()
makeAc.productAc?.product?()


//actor

actor User {
    var score = 10
    func printScore() {
        print("score is: \(score)")
    }
    func copyScore(other: User) async {
        score = await other.score
    }
}

//higher order function

var array = [1,2,3,4,5,6,7,8,9]

let into2 = array.map({(number) in
    return number * 10
})

var dict: [Int: String] = [1: "Darshan", 2: "Shubham", 3: "Shyam"]

let keys = dict.map{$0.key}
print(keys)
print(dict.map{$0.value})


//extension Int {
//    subscript( _ digitOfInt: Int) -> Int {
//        var temp = self
//
//        return temp
//
//    }
//}


func abcd11() {
    var name22 = "darshan"

    var closure: () -> Void = { [name22] in
        print(name22)
    }
    
    name22 = "rajan"
    print(name22)
    closure()

}

abcd11()
