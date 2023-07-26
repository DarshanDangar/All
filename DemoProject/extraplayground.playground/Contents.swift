import UIKit
func arg(name:String) ->String{
    return name
}
print(arg(name: "Darshan"))


func arg(firstnamearg a:String,lastnamearg b:String) -> String{
    return "\(a) \(b)"
}
print(arg(firstnamearg: "Darshan", lastnamearg: "Dangar"))

//variadic parameter

func vari(m:Float...){
    for i in m{
        print(i)
    }
}
vari(m:1,2,3,4,5)

func vari(n:Any...){
    // ... three period character
    for i in n{
        print(i)
    }
}
vari(n: 1,2,3,1.1,"Darshan",5.5)

func vari(mark:Int...,rollno:Int,name:String){
    var sum = 0
    for i in mark{
        sum += i
    }
    let percentage = sum / 6
    print("student name is: \(name)")
    print("student rollno is: \(rollno)")
    print("student's total mark is: \(sum)")
    print("\(name) take \(percentage)% for this year")
}
vari(mark: 90,95,98,99,96,91, rollno: 1, name:"Darshan")


func vari(sem1:Int...,sem2:Int...,sem3:Int...){
    var sum = 0
    for i in sem1{
        sum += i
    }
    print("sem 1 mark total is: \(sum)")
    sum = 0
    for i in sem2{
        sum += i
    }
    print("sem2 mark total is: \(sum)")
    sum = 0
    for i in sem3{
        sum += i
    }
    print("sem3 mark total is: \(sum)")
    
}
vari(sem1: 90,95,96,98,97, sem2: 91,80,85,87,80, sem3: 90,85,80,70,85)

func swap(a:inout Int,b:inout Int){
    let temp = a
    a = b
    b = temp
}
var no = 2
var co = 10

swap(a: &no, b: &co)
print("swap number are \(no) ,\(co)")
print(no)
print(co)

func sum(a:Int , b:Int) -> Int{
    return a + b
}
//var add:(Int,Int) -> Int = sum
//print("result is: \(add(5,4))")
//
//print(sum(a: 5, b: 4))

//
//func sum1(a:Int,b:Int) -> Int{
//    return a + b
//}
//var addi = sum
//type(of: addi)
//print("Result: \(addi(5,4))")
//
//func another(addi:(Int,Int) -> Int,a:Int,b:Int){
//    print("Result: \(addi(a,b))")
//}
//another(addi: addi, a: 5, b: 5)


//func fact(a:Int) -> Int{
//
//}

func greetMessage(){
    func DisplayName(){
        print("Good Morning Darshan")
    }
    DisplayName()
}
greetMessage()

func addNum(){
    print("Addition")
    func display(num1:Int,num2:Int){
        print(num1 + num2)
    }
    display(num1: 5, num2: 5)
}
addNum()

func calcDecrement(total:Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement -= total
        return overallDecrement
    }
    return decrementer
}
let dec = calcDecrement(total: 10)
print(dec())

func fact(a:Int) -> Int{
    var factl = 1
    for i in stride(from: a, to: 1, by: -1){
        factl *= i
    }
    return factl
}
print(fact(a: 5))

func first(a:Int) -> Int{
    var sum = 0
    func second() -> Int{
        sum += a
        func third() -> Int{
            sum += a
            return sum
        }
        return third()
    }
    return second()
}
print(first(a: 5))

// outer function
func addNumbers() {
  print("Addition")

  // inner function
  func display(num1: Int, num2: Int) {
      print("5 + 10 =", num1 + num2)
  }

  // calling inner function with two values
  display(num1: 5, num2: 10)
}

// calling outer function

func swit(cha:Character?) -> (Int,Int) -> (Int) {
    func sum(a:Int,b:Int) -> Int{
       print("sum is: \(a + b)")
        return a + b
    }
    func sub(a:Int,b:Int) -> Int{
        print("Substract is: \(a - b)")
        return a - b
    }
    func mul(a:Int,b:Int) -> Int{
        print("multiplication is: \(a * b)")
        return a * b
    }
    func div(a:Int,b:Int) -> Int{
        print("Division is: \(a / b)")
        return a / b
    }
    switch cha{
    case "+":
        return sum
    case "-":
        return sub
    case "*":
        return mul
    case "/":
        return div
    default:
        return sum
    }

}
let gfj = swit(cha: "-")
var result = gfj(5,4)
print(result)

func fact1(a:Int) -> Int{
    
    if a == 0{
        return 1
    }else{
        return a * fact1(a: a - 1)
    }
}
print("factorial 5 is: \(fact(a: 5))")

//generic function
// T is generic type parameter
var arr:[Any?] = []
func generic<T>(a:T) -> T {
    arr.append(a)
    return a
}
print(generic(a: 5))
print(generic(a: "Darshan"))
print(generic(a: 5.5))
print(generic(a: true))
print(generic(a: [1,2,3,4,5]))
print(generic(a: [1:"Darshan",21:"Shyam"]))
print(arr)
for i in arr{
    if let a = i as? Int{
        print(a)
    }else if let b = i as? String{
        print(b)
    }else if let c = i as? Array<Int>{
        print(c)
    }else if let d = i as? Double{
        print(d)
    }else if let e = i as? Bool{
        print(e)
    }else if let f = i as? Dictionary<Int,String>{
        print(f)
    }else if let g = i as? Float{
        print(g)
    }else{
        print("Not execute")
    }
}
print(type(of: arr))

func abc(a: Int,b: String) -> (Int , String) {
    return (a,b)
}
var b = abc(a: 5, b: "Darshan")
print(b)
type(of: b)
b.0
b.1

let assd = b.0
let adss = b.1
type(of: b)

//


//auto closure

func display(greet: @autoclosure () -> ()) {
    greet()
}
display(greet: print("Hello World!"))


//func escap(a : Int, b: @escaping () -> () ){
//    print("1")
//    DispatchQueue.main.asyncAfter(deadline: .now() + 5){
//        b()
//    }
//
//    print("2")
//
//    return
//}
//escap(a: 5){
//    print("in b")
//}

var array_autoclosure = [1,2,3,4,5,6,7,8,9,10]

var remov_array = {array_autoclosure.remove(at: 0)}



print(remov_array())
print(array_autoclosure)

var customerp = ["Shyam","Darshan","Shubham"]
func auto_closure(customer: @autoclosure () -> String ) {
    print("\(customer())")
}
auto_closure(customer: customerp.remove(at: 0))
auto_closure(customer: "Hi Darshan")

func trail(a: Int, asd: () -> ()) {
    print(a)
    asd()

}

trail(a: 5) {
    print("Hey, How are you?")
}

typealias complex = (_ a: Int,_ b: Int) -> Int

var closure_typealias : complex = { (a,b) in
    return a + b
}

print("\(closure_typealias(1,2))")




class LanguageClass {
    var languageClosure: (() -> ())?
    var name: String = ""
    init() {
        self.languageClosure = { print("\(self.name) the language") }
    }
    deinit {
        print("deinitialized")
    }
}
 
var swiftLanguage: LanguageClass? = LanguageClass()
swiftLanguage?.name = "Swift"
swiftLanguage?.languageClosure?()
swiftLanguage = nil


//class Count {
//    var counter = 1
//}
//class Exampleclass {
//
//    var coun = Count()
//    lazy var closur: () -> Void = { [weak coun] in
//        if let co = coun{
//            print(co.counter)}
//    }
//}
//
//var bx = Exampleclass()
//bx.closur()

class Count {
    var counter = 1
}
class Exampleclass {
    
    var coun:Count?
    lazy var closur: () -> Void = { [weak coun] in
        if let co = coun{
            print(co.counter)}
    }
}

var bx = Exampleclass()
bx.closur()

var takeString = {(str:String) -> Void in
    print(str)
}
takeString("Hii Shubham")



//enum

enum Trail {
    
}
enum ColorName {
    case black
    case silver
    case gold
    case gray
    case white
}
let fill = ColorName.black
print(fill)


enum ColorNameType:String {
    case black = "blackhh"
    case silver = "silver"
    case gold = "gold"
    case gray
}
let fillType = ColorNameType.gray
print(fillType)


enum ColorNameWithoutType: String {
    case black
    case silver
    case gold
    case gray
    
}

enum ColorNameusingOneCase: String {
    case black,silver,gold,gray,whitr
}
var directionToHead = CompassPoint.south
enum CompassPoint {
    case north
    case south
    case east
    case west
}
switch directionToHead {
case .north:
    print("The direction is north")
case .south:
    print("The direction is south")
case .east:
    print("The direcction is east")
case .west:
    print("The direction is west")
}

enum Planet_enum {
    case north
    case earth
}

enum Planet_enum2 {
    case north
    case earth
}

//iterating over Enumration cases
enum Beverages: CaseIterable {
    case coffee, tea, juice
}
let beverag = Beverages.allCases
type(of: beverag)
print("\(Beverages.allCases.count) beverages available")

for beverage in Beverages.allCases {
    print(beverage)
}

//Associated Values
enum Distance {
    case km(a:String)
    case m(b:String)
}
//var dis = Distance.km(a: "Darshan")

//print(dis)
Distance.m(b:"5 m")
//print(dis)

enum Mercedes {
    case sedan(height: Double)
    case suv(height: Double)

    case roadster(height: Double)
}

var choice = Mercedes.sedan(height: 5.4)

switch choice {
case  .sedan(let height):
    print(height)
case let .suv(height):
    print("Height", height)
    print(type(of: height))
case let .roadster(height):
    print("Height",height)
}


//Associated Multiple values
enum Mark {
    case subject(Int,Int,Int,Int,Int)
    case grade(String,String,String,String,String)
}
var mark = Mark.subject(95, 90, 85, 87, 90)
print(mark)
var grade = Mark.grade("A1", "A1", "B1", "B1", "A2")
print(grade)

//Name Associated Values
enum Pizza {
    case small(inches: Int)
    case medium(inches: Int)
    case Large(inches: Double)
}
Pizza.Large(inches: 12)
Pizza.medium(inches: 10)
Pizza.small(inches: 8)

//Raw values

enum Vehicle: String {
    case car = "Four wheeler"
    case bike = "Two wheeler"
    case truck = "Six and more wheeler"
}
Vehicle.bike.rawValue

var planet_name = Planet_enum.earth
switch planet_name {
case .north:
    print("North Direction")
case .earth:
    print("Earth is a safe place for human")
}


enum Num : Int{
    case num1 = 1,num2,num3,num4
}
var n = Num.num3
print(n)

//implicitly assign raw value

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print(Planet.venus.rawValue)



enum SocialLogin {
    case google
    case facebook
    case twiter
    case default1
}

var login = SocialLogin.facebook

switch login {
case .google:
    print("Login via google")
case .facebook:
    print("Login via Facebook")
case .twiter:
    print("you can not change password,because you are login via twiter")
case .default1:
    print("Login via email id or phone number")
}

//func soc(_ checkSocial: SocialLogin) -> Bool {
//    switch checkSocial {
//    case .facebook:
//        return true
//    case .google:
//        return true
//    case .twiter:
//        return true
//    case .default1:
//        return true
//    }
//}
//soc(.facebook)

//using enum

//var checkSocial:(SocialLogin) -> () = { login in
//    switch login {
//    case .google:
//        print("Login via Google")
//    case .facebook:
//        print("Login via Facebook")
//    case .twiter:
//        print("Login via twiter")
//    case .default1:
//        print("Login via email or phone")
//    }
//}

//checkSocial(.facebook)

//if case .google = login {
//    print("Login via Google")
//}else if case .facebook = login {
//    print("Login via Facebook")
//}else if case .twiter = login {
//    print("Login via twiter")
//}else {
//    print("Login via email id or mobile phone")
//}

//indirect indicate that enum case recursive by writing before it

//recursive Enumeration

enum AirthmaticExpression {
    case number(Int)
    indirect case addition(AirthmaticExpression, AirthmaticExpression)
    indirect case multiplication(AirthmaticExpression, AirthmaticExpression)
    
}

var five = AirthmaticExpression.number(5)
var four = AirthmaticExpression.number(4)
var sum = AirthmaticExpression.addition(five, four)
var product = AirthmaticExpression.multiplication(sum, AirthmaticExpression.number(3))

func evaluate(_ expression: AirthmaticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(value1, value2):
        return evaluate(value1) + evaluate(value2)
    case let .multiplication(value1, value2):
        return evaluate(value1) * evaluate(value2)
    }
}
print(evaluate(sum))
print(evaluate(product))


//Structure and Classes
//define struct and class



struct SomeStructure {
    
}
class SomeClass {
    
}

struct Resolution {
    var width = 0
    var height = 0
    var length:Int?
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var framerate = 0.0
    var name: String?
}



//create instance struct and class

var someResolution = Resolution()
var someVideoMode = VideoMode()

class Bike {
    var name = ""
    var color = ""
    var price = 0
}

var bikeSplander = Bike()
bikeSplander.name = "Splander"
bikeSplander.color = "Silver"
bikeSplander.price = 100000

print(type(of:bikeSplander))

print(bikeSplander.price)

//create multiple objects of class

var bike2 = Bike()
bike2.name = "Royal Enfield classic 350"
print(bike2.name)

var bike3 = Bike()
bike3.name = "Java"
print(bike3.name)

class MyBike {
    var name: String
    var price: Int
    
    init(name: String, price: Int){
        self.name = name
        self.price = price
    }
}

var bullet = MyBike(name: "Royal Enfield", price: 180000)
print("Bike name is: \(bullet.name) and it's price is: \(bullet.price)")
//Accessing Properties


print("The width of some resolution is: \(someResolution.width)")
print("The length of some resolution is: \(someResolution.length)")

print("The use of video sub Property resolution width is: \(someVideoMode.resolution.width)")
print("The use of video sub Property resolution width is: \(someVideoMode.resolution.length)")

someVideoMode.resolution.length = 5
print("The use of video sub Property resolution width is: \(someVideoMode.resolution.length)")
someVideoMode.resolution.width = 1800

someResolution.width




//memberwise initialize for structure types

let memberResolution = Resolution(width: 500,height: 100, length: 100)
print(memberResolution)

//class is reference type
class Abc {
    var xc = 5
}
 var dsa = Abc()
dsa.xc

var asd = Abc()
asd.xc = 6
dsa = asd
print(asd.xc)
asd.xc = 7
print(dsa.xc)
// === (identical to operator) use two constants and variables of class type refer to exectly the same class instance
if asd === dsa {
    print("asd and dsa refer to the same Abc instance")
}

//struct is value type

struct TypeCheck {
    var a = 5
}

var checktype = TypeCheck().a
print(checktype)
var typecheck = checktype
print(typecheck)

typecheck += 5
print(typecheck)

print(checktype)

checktype += 2
print(checktype)

print(typecheck)

if checktype != typecheck {
    print("checktype and typecheck refer to the different copy it is value type")
}

//struct Meeting {
//    var name: String
//    var reminderDate: Int?
//
//
//    mutating func cancel(withMessage message: String) {
//        reminderDate = 5
//    }
//}
//
//var asf = Meeting(name: "jy")
//
//print(asf.reminderDate)


struct Stack {
    public private(set) var items = [Int]() // Empty items array
    
    mutating func push(_ item: Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int? {
        if !items.isEmpty {
           return items.removeLast()
        }
        return nil
    }
}

var stack = Stack()
stack.push(4)
stack.push(78)
stack.items // [4, 78]
stack.pop()
stack.items // [4]

//struct Stack1 {
//    public private(set) var items = [Int]() // Empty items array
//
//     func push(_ item: Int) {
//        items.append(item)
//    }
//
//     func pop() -> Int? {
//        if !items.isEmpty {
//           return items.removeLast()
//        }
//        return nil
//    }
//}

//var stack1 = Stack1()
//stack1.push(4)
//stack1.push(78)
//stack1.items // [4, 78]
//stack1.pop()
//stack1.items // [4]


//var srjk = 5
//func vbn(){
//
//    srjk = 8
//
//}
//vbn()
//print(srjk)

enum Compass {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = Compass.south
print(currentDirection)
let rememberedDirection = currentDirection
print(rememberedDirection)

currentDirection.turnNorth()
print(currentDirection)
print(rememberedDirection)


//enum Compass {
//    case north, south, east, west
//    func turnNorth() {
//         currentDirection = Compass.north
//    }
//}
//var currentDirection = Compass.south
//print(currentDirection)
//let rememberedDirection = currentDirection
//print(rememberedDirection)
//
//currentDirection.turnNorth()
//print(currentDirection)
//print(rememberedDirection)

class Res {
    var num1 = 2
    var num2 = 3
    
    func area() -> Int {
        return num1 * num2
    }
    
    func scaleBy(value: Int) {
        num1 *= value
        num2 *= value
    }
}

var rect = Res()
rect.area()
rect.scaleBy(value: 3)
rect.area()


struct ResStruct{
    var num1 = 2
    var num2 = 3
    
    
    func area() -> Int {
        print(num1)
        print(num2)
        return num1 * num2
        
    }
    
    mutating func scalBy(value: Int) {
        print("before scalby num1 and num2 is : \(num1) \(num2)")
        num1 *= value
        num2 *= value
        print("after scaleby num1 and num2 is : \(num1) \(num2)")
        
    }
}

var rectStruct = ResStruct()
rectStruct.area()
rectStruct.scalBy(value: 5)
rectStruct.area()

//access control
public var img = 555
class AccessControl {
    
    
    func add (a: Int) -> () {
        print(a + img)
    }
    
}
var plus = AccessControl()

class Checking {
    var im = img
    
}
Checking()
print(Checking().im)

open class AccessControl1 {
    public var publicAccess = "This is public property"
}

class AccessControl2 {
    var publicAccess = AccessControl1().publicAccess
}

public class Name {
    var fname: String?
    var lname: String?
    
   class Fullname {
        var age: Int?
        var no:Int?
    }
    var jh = Fullname()
}

//ARC

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit{
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "Darshan")
//print(reference1)
//reference1 = nil

reference2 = reference1
reference3 = reference1
//print(reference2?.name)
//print(reference3)

reference3 = nil

// strong reference

//class NameStrng {
//    let name: String
//    init(name: String) {
//        self.name = name
//        print(name)
//    }
//    var apartment: Apartment?
//    deinit{
//        print("\(name) deinitialized")
//    }
//}
//
//
//class Apartment {
//    let unit: String
//    init(unit: String) {
//        self.unit = unit
//        print(unit)
//    }
//    var nameother: NameStrng?
//    deinit{
//        print("\(unit) deinitialized")
//    }
//}

//var darshan: NameStrng?
//var unit4A: Apartment?
//
//darshan = NameStrng(name: "Darshan")
//unit4A = Apartment(unit: "4A")
//darshan?.apartment = unit4A
//unit4A?.nameother = darshan
//
//darshan = nil
//unit4A = nil

//solve arc problem using weak reference

class NameStrng {
    let name: String
    init(name: String) {
        self.name = name
        print(name)
    }
    var apartment: Apartment?
    deinit{
        print("\(name) deinitialized")
    }
}


class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
        print(unit)
    }
    weak var nameother: NameStrng?
    deinit{
        print("\(unit) deinitialized")
    }
}

var darshan: NameStrng?
var unit4A: Apartment?

darshan = NameStrng(name: "Darshan")
unit4A = Apartment(unit: "4A")
darshan?.apartment = unit4A
unit4A?.nameother = darshan

darshan = nil
unit4A = nil

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit{
        print("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: String
    unowned let customer: Customer
    init(number: String, customer: Customer) {
        self.number = number
        self.customer = customer
        print("\(number) and \(customer.name) is being initialized")
    }
    deinit{
        print("\(number) is being deinitialized")
    }
}

var nam: Customer?

nam = Customer(name: "Darshan")
nam?.card = CreditCard(number: "9999 8888 7777 6666", customer: nam!)
nam = nil



//func autoc (x: Int ,y: @autoclosure () -> ()){
//    print(x)
//    y()
//
//}
////let x =
//autoc(x: 5, y: print("ghg"))

//unowned optional reference
//
//class Department {
//    var name: String
//    var course: [Course]
//    init(name: String) {
//        self.name = name
//        self.course = []
//    }
//}
//
//class Course {
//    var name: String
//    unowned var department: Department
//    unowned var nextCourse: Course?
//    init(name: String, department: Department){
//        self.name = name
//        self.department = department
//        self.nextCourse = nil
//    }
//}
//
//let department = Department(name: "Computer Science")
//
//let intro = Course(name: "C Language", department: department)
//let intermediate = Course(name: "C++", department: department)
//let advance = Course(name: <#T##String#>, department: <#T##Department#>)

//var adf = "hjdp"
//var koj = adf as? Int


class  ClassAbc{
    var name: String
    var price: ClassXyz
    init(name: String) {
        self.name = name
        self.price = ClassXyz(quantity: 500)
    }
}

class ClassXyz{
    var quantity: Int
    unowned var cvh: ClassAbc?
    init(quantity: Int) {
        self.quantity = quantity

    }
}

var ame1 = ClassAbc(name: "Shyam")

var qun = ClassXyz(quantity: 5)

//class A {
//    var b : B?
//}
//class B {
//    var a : A?
//}
//
//var a = A()

class A {
    var x: Int
    var y: Int
    
    var z: B?
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
        
       
    }
    deinit{
        print("A is deinitalized")
    }
}

//var wer: A? = A(x: 5, y: 4)
//var qwe: A? = A(x: 6, y: 4)
//
//wer?.z = qwe
//qwe?.z = wer
//
//wer = nil
//qwe = nil


class B {
    var a: Int
    var b: Int
    unowned var c: A?
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    deinit{
        print("B is deinitalized")
    }
}

var wer: A? = A(x: 5, y: 4)
var qwe: B? = B(a: 6, b: 5)
wer?.z = qwe
qwe?.c = wer
wer = nil
qwe = nil


class Ax {
    
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
            return self.sum
        }
        set{
            addd = newValue
        }
    }
    var sub: Int {
        get{
            return self.sub
        }
        set{
            addd = newValue
        }
    }
    
    var multiple: Int {
        get{
            return self.multiple
        }
        set{
            addd = newValue
        }
    }
    
    var divide: Int {
        get{
            return self.divide
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


