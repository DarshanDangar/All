import UIKit
import Foundation

var greeting = "Hello, playground"
let a = 10
var x : Double = 5.0
var y = Double(a) + x

var msg = "My Name is "
var nam = "Darshan"
//concatination
var fulnam = msg + nam
//uppercase
var uper = fulnam.uppercased()
//lowercase
var lower = fulnam.lowercased()
//character count in string(Length)
var countcar = fulnam.count

/*var str = "this book price is: "
var prc = 100
var details = str + prc */

var str = "this book price is: "
var prc = 100
//different type of string concetination(+) or interpolation( \() ) and typecasting
var details = str + String(prc)
var strfulldeatils = "this book price is: " + String(100)
var strfulldeatil = "this book price is: " + String(prc)
var strfulldeati = "this book price is: \(prc)"

//Assignment  Operator
var h = 2
var (q,w) = (10,20)
    
/*if q == w {
    print("sucess")
}else{
    print("not sucess")
}*/

//Arithmatic operator
var e = 10+20
var r = 10*20
var t = 20-10
var u = 20/10


//Reminder operator (modulo %)

var i = 9 % 2

//Compound Assignment Operator
var s = 10
s += 20
//here s = s + 20

//Comperasion operator
//1.equalto (==)
var cv = 10
var vc = 20
var cvc = 10
if cv == cvc{
    print("Your value is match")
}else{
    print("Your value is not match")
}

//2.not equalto(!=)
if cv != cvc{
    print("Your value is match")
}else{
    print("Your value is not match")
}

//3.greaterthan(>)
if vc > cv{
    print("Your value is match")
}else{
    print("Your value is not match")
}

//4.lessthan(<)
if vc < cv{
    print("your vc value is smaller than cv")
}else{
    print("your vc value is not smaller than cv")
}

//5.greatherthan or equalto (>=)
if cv >= cvc{
    print("Your cv and cvc value is equall otherwise cv is bigger than cvc")
}else{
    print("value is not equal")
}

//6.lessthan or equalto(<=)
if cv <= vc{
    print("Your cv and cvc value is equall otherwise cv is smaller than vc")
}else{
    print("value is not equal")
}

//ternary Condition Operator (a?y:n)
var hash = false
var cash = hash ? 10 : 20
print(cash)
cash = !hash ? 10 : 20
print(cash)
// if condition true then get first value (y) otherwise get second value(n)

//Range Operator
//1.close range operator
//that means between the given ranse use this type operator include 1 and 10

for table5 in 1...10{
    print("5 multiplies \(table5) = \(table5*5)")
}

//2.Half open range operator
// this type of opertor use use length,not given final value and then find some value between range

var arr = ["Darshan","Shubham","Shyam","Krunal"]
var con = arr.count
for inn in 0..<con{
    print("Person \(inn+1) name is \(arr[inn])")
}

//3.one sided range

//index 2 and after all index
for i in arr[2...]{
    print(i)
}
//index 0 to 2
for i in arr[...2]{
    print(i)
}

//o to lesthen 2 not include 2
for i in arr[..<2]{
    print(i)
}
//particular array show in index
print(arr[0])

//logical not operator
//this operator change result value like if value is true and get answer false

var ff = false
if !ff{
    print("sucess")
}

//logical and operator

var fy = true
var fd = true
var xy = false
if fy && fd && xy{
    print("sucess")
}else{
    print("Fail")
}

//logical or operator

if fy || xy || fd{
    print("Sucess")
}

//combining operator

if (fy&&xy) || xy{
    print("Sucess")
}else{
    print("Fail")
}


var dolarsign = "\u{24}"
print(type(of: dolarsign))

var ds = "\u{24}"
print(type(of: ds))

var dsa:Character = "\u{24}"
print(type(of: dsa))

var dfg = #"""
"this is a cow"
cow is\
"The cow's color is white"
"""#
print(dfg)


var ty = """
This is a man
"the man is"
"""

for i in "Da,rs,han"{
    print(i,separator:",")
}
print(ty)
var stri = "Hello, How are you"
//"# namste #"
print(stri)

//let threeDoubleQuotationMarks = """
//Escaping the first quotation mark \"""
//Escaping all three quotation marks \"\"\"
//"""

//let threeMoreDoubleQuotationMarks = #"""
//Here are three more double quotes: """
//"""#
//print(thre)


//string is empty or not
stri = "s"
print(stri)
if stri.isEmpty{
    print("String is empty")
}else
{
    print("string is not empty")
}

// const string not change only change assign variable string

stri = "Hello how are you"
for i in stri{
    print(i)
}

print(#"6 times 7 is \#(6*7)."#)
print(#"6 times 7 is \#(6 * 7)."#)

//string index part
var cn = stri.count
print(cn)
//show oth index character
stri[stri.startIndex]

//index outside of string range then generate run time error
var strin = "Hello How was the day"
strin[strin.index(after: strin.startIndex)]
strin[strin.index(stri.startIndex, offsetBy: 6)]
//strin[strin.index(stri.)]

//indices property to access all of the indices of indivisual character in a string

for i in strin.indices{
    //print(type(of: i))
    print(strin[i])
    //print(i, terminator: "")
}

//inserting and removing single character

strin.insert(contentsOf: stri, at: strin.endIndex)
strin.remove(at: strin.index(before: strin.endIndex))
strin.removeLast()

//strin.ranges(of: "was")

//var range = strin.index(strin.startIndex, offsetBy: 3)..<strin.endIndex

//strin.removeSubrange(range)

var stringrange = "swift is pogramming language"

//var range = stringrange.index(stringrange.endIndex,offsetBy: -8)..<stringrange.endIndex
//stringrange.removeSubrange(range)

//var range = stringrange.index(stringrange.index(after: stringrange.startIndex),offsetBy: 5)..<stringrange.endIndex
//stringrange.removeSubrange(range)

//var range = stringrange.index(stringrange.startIndex, offsetBy: 8, limitedBy: stringrange.index( stringrange.endIndex,offsetBy: -11))
//stringrange.remove(at: range)

//substring

var greating = "Hello, swift"
var ind = greating.firstIndex(of: "o") ?? greating.endIndex
print(ind)
print(type(of: ind))
var cvb = Substring(repeating: "c", count: 5)
print(type(of: cvb))

let sec = greating[..<ind]
let thi = greating[ind...]

var asd : Int?
if asd != nil
{
    print("iteam is not null")
}else{
    print("Iteam is null")
}

var str1  : String?
str1 = "My name is Darshan!"
if str1 != nil {
    print(str1 ?? "")
}else{
    print("str has nil value")
}

var str2  : String?
str2 = "My name is Darshan!"
if str2 != nil {
    print(str2!)
}else{
    print("str has nil value")
}

var j:Int! = nil
print(type(of: j))
print(j)

var str3 : String?
str3 = "hello,Darshan"
if var str4 = str3{
    print("str4 string is: \(str4)")
}else{
    print("Str4 has no any string value")
}


//control flows

//for loop

var numbersofleg = ["cow":4,"ant":6,"spider":8]
for (animals,legs) in numbersofleg{
    print("\(animals) has \(legs) legs")
}

let base = 3
var power = 5
var answer = 1
for i in 1...power{
    answer *= base
}
print(answer)
//stride use to skip some target
var minuteInterval = 5
var minutes = 60
for tick in stride(from: 0, to: minutes, by: minuteInterval){
    print(tick)
}

var hour = 12
var hourInterval = 3
for track in stride(from: 3, through: hour, by: hourInterval){
    print(track)
}

for i in 1...5{
    print(i)
}
//var b: String?
//guard let a = b else {
    
//}

let ch:Character = "c"
switch ch {
case "a":
    print("The first letter of the alphabet")
case "b":
    print("The second letter of the alphabet")
case "c":
    print("The third character of the alphabet")
default:
    print("default case")
}

let xaxis = (2,2)
switch xaxis {
case (0,let y):
    print("your y axis is \(y) on graph")
case (let x,0):
    print("your x axix is \(x) on graph")
case let (x,y):
    print("your x axis is \(x) and y axis is \(y) on graph")
//default:
  //  print("Default graph")
}

var chara = "f"
switch chara{
case "a","e","i","o","u":
    print("\(chara) is vowel character")
case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z":
    print("\(chara) is constant character")
default:
    print("default case")
}

var inputstr = "hello how are you"
var outputstr = ""
var inputextra: [Character] = ["a" ,"e" ,"i" ,"o" ,"u" ," "]

//for cha in inputstr{
//    if inputextra.contains(cha){
//        continue
//    }else{
//        outputstr.append(cha)
//    }
//
//}

for cha in inputstr{
    if inputextra.contains(cha){
        continue
    }
    outputstr.append(cha)
}
print(outputstr)

if #available(macOS 17, *){
    print("yes it's available")
}else{
    print("no it's not available")
}

var vg:Character = "c"
print(MemoryLayout.size(ofValue: vg)) //check memory occupied

var hjk:Bool = true
print(MemoryLayout.size(ofValue: hjk))

var arr501 = [1,2,3]
print(arr501.capacity)
///arr501.remove(at: 1)
arr501.insert(5, at: 3)
arr501.insert(6, at: 4)
arr501.append(7)
arr501.append(8)
print(arr501.capacity)
//arr501.removeAll(keepingCapacity: false)
arr501.append(1)
print(arr501.capacity)


//Array in swift
//null array create
var arr1: [Int] = []
print("arr has \(arr1.count) iteams")

var arr2 = Array(repeating: 3, count: 3)
print(arr2)
var arr3 = Array(repeating: 5, count: 3)
print(arr3)
var arr4 = arr3 + arr2
print(arr4)

var arr5 = ["Milk", "Vegetable"]
print("arr5 has \(arr5.count) iteams")
print(arr5)

if arr5.isEmpty{
    print("arr5 is empty")
}else{
    print("arr5 is not empty")
}

arr5.append("Fruits")
print(arr5)

arr5 += ["Butter"]
arr5 += ["Apple", "Banana", "Guavava"]
print(arr5)

print(arr5[1])

for i in arr5.indices{
    print("arr5[\(i)] is \(arr5[i]) on this array")
}

arr5.removeLast()
print(arr5)

//dictionary

//create empty dictionary
var dict : [Int:String] = [:]
var dict1: [Double:String] = [:]
//add key and value in dictionary
dict[10] = "ten"
print(dict)
dict[Int(11.8)] = "ten.one"
print(dict)
dict1[11.0] = "eleven"
print(dict1)

//count dictionary iteams
var dict2 : [String:String] = ["In":"India", "DUB":"Dubai", "AUS":"Austreliya"]
print(dict2)
print("the total airport \(dict2.count) in dictionary")

//check dictionary is not empty
if dict2.isEmpty {
    print("Dictionary is empty")
}else{
    print("Dictionary have multiple airport like \(dict2.values)")
}
//add key and value in dictionary
dict2["LHR"] = "London"
print(dict2.values)

//update any particular value using key
dict2.updateValue("London Air", forKey: "LHR")
print(dict2.values)

dict2["LHR"] = "London Air"
//dict2["LHR"] = nil
print(dict2.values)

for (airportcode,airportname) in dict2{
    //print("Airport code is:\(airportcode) and Airport name for it's code:\(airportname)")
    print("Airportcode:\(airportcode) and Airportname:\(airportname)")
    
    
}

for airportcode in dict2.keys{
    print("Airport code is : \(airportcode)")
}

for airportname in dict2.values{
    print("Airport name is:\(airportname)")
}

//for set
//create a empty set
var leter = Set<Character>()


leter.insert("D")
print(leter)

//creating a set with array literal

var favset: Set<String> = ["Darshan", "Shubham", "Shyam"]
print(favset)

//count set iteam
print("favset has \(favset.count) iteams")

//check set is empty or not
if favset.isEmpty{
    print("favset is Empty")
}else{
    print("favset set is not empty and its iteam is \(favset)")
}
//insert and remove in set
favset.insert("Krunal")
print(favset)
favset.remove("Krunal")
print(favset)

//contains any value in set
if favset.contains("Darshan2"){
    print("yes set is contains value")
}else{
    print("set doesnt contains values")
}
//sorted set
print(favset.sorted())

//performing set operation

let odddigit: Set = [1,3,5,7,9]
let evendigit: Set = [0,2,4,6,8]
let sigledigitprimenum: Set = [2,3,5,7]

//union means all in one group
var av = odddigit.union(evendigit)
print(av)
print(av.sorted())

//intersection means both group common part
var ab = odddigit.intersection(sigledigitprimenum)
print(ab)

//symmetricdifference means different both value not add same value for both group
var an = odddigit.symmetricDifference(sigledigitprimenum)
print(an.sorted())

//subtracking means first group valus contain but same value not contain

var am = odddigit.subtracting(sigledigitprimenum)
print(am.sorted())

//optional binding

var strop: Int? = 10
if let nam1 = strop ,nam1 > 8{
    print(nam1)
    print("strop is greater than 8")
}

var strop1: Int? = 12
func greet(person: [String: String]){
    guard let nam2 = strop1 , nam2 > 80 else {
        print("no execution")
        return
        //print("guard is not initialize")
    }
}
greet(person: ["name": "john"])

func sum(var a:Int ,var b:Int) -> Int{
    return (a + b)
}
print("Sum answer is \(sum(var: 2, var: 3))")
let http = (code: 404, msg: "Not Found")
print(http)

//Error handling

//func makeSandwich() throws {
    
//}
//try makeSandwich()
//eatSandwich()

var strin1 = "Hello"
print(strin1[strin1.startIndex])
print(strin1[strin1.index(before: strin1.endIndex)])
print(strin1[strin1.index(after: strin1.startIndex)])
print(strin1.index(strin1.startIndex, offsetBy: 3))

var dict11: [Int:String] = [12: "Hello" , 10: "Name"]
print("Dictionary has \(dict11.values.count) values")
print("Dictionary key is: \(dict11.keys)")
print("Dictionary value is: \(dict11.values)")

for (key,value) in dict11{
    print("Dictionary key and value is:\(key) and \(value)")
    print("[\(key):\(value)]")
}

var axc:Character = "c"
print(MemoryLayout.size(ofValue: axc))
//string implementation
var char: [Character] = ["a", "b", "c"]
var stringer = ""
for i in char{
    stringer.append(i)
}
print(stringer)

print(stringer.append(contentsOf: char))

var string12 = ""
var string13 = String()

if string12.count == 0{
    print("String is empty")
}
if string12 == String(){
    print("String is Empty")
}
if string12 == ""{
    print("String is Empty")
}
if string12.isEmpty {
    print("String is Empty")
}

var str123 = "Hello,My Name is Darshan"

let Quation = """
\nhello,I am Darshan Dangar. \
from Rajkot.

"I am student of Computer Engineering"
"""

var str134 = str123 + " " + Quation
print(str134)

let threeMoreDoubleQuation = #"""
Here are 🐶there more double Quation
"""#

print(threeMoreDoubleQuation)

str134 += threeMoreDoubleQuation
print(str134)

var str21 = "Horse"
//str21 += " Ashw"
print(str21)

let str22 = "Horse"
//str22 += " Ashw"
print(str22)


for character21 in "Dog!🐶"{
    print(character21)
}

for character21 in "Dog"{
    print(character21)
}

var catChara: [Character] = ["C", "A", "T", "!", "🐱"]
var stringChara = String(catChara)
print(stringChara)
print(stringChara.lowercased())

str21 += stringChara
print(str21)

str21.append("!")
print(str21)

let badstart = """
one
two
"""

let end = """
theree
"""

print(badstart + end)

let goodStart = """
one
two

"""

print(goodStart + end)


let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)
print(#"Write an interpolated string in swift using \(multiplier)."#)

var stringcount = "Horse 🐴, Snake 🐍, Cow 🐄, Dog 🐶"
print("stringcount all character is \(stringcount.count)")
 stringcount += "\u{301}" //acute acent character add
//aaa other character add karvi to count ma ferfar no thay
print("stringcount all character is \(stringcount.count)")


//modify string

var grat = "Darshan"

print(grat.startIndex)
print(grat[grat.startIndex])
print(grat[grat.index(after: grat.startIndex)])
print(grat[grat.index(grat.startIndex, offsetBy: 2)])
print(grat[grat.index(grat.startIndex, offsetBy: 3)])
//print(grat[grat.index(grat.startIndex, offsetBy: 4, limitedBy: grat.endIndex)])
print(grat[grat.index(grat.startIndex, offsetBy: 4)])
print(grat[grat.index(grat.startIndex, offsetBy: 5)])
print(grat[grat.index(grat.startIndex, offsetBy: 6)])

for i in grat{
   print(i)
}

for i in grat.indices{
    print("\(grat[i]) ", terminator: "")
}

grat.insert("!", at: grat.endIndex)
print(grat)

grat.insert(contentsOf: " Dangar", at: grat.endIndex)
print(grat)

grat.remove(at: grat.index(grat.startIndex, offsetBy: 7))
print(grat)

grat.removeLast()
print(grat)
grat.removeLast(5)
print(grat)
grat.removeFirst(5)
print(grat)

//grat.removeAll()
//print(grat)

//grat += "D"
//print(grat)
grat = "Darshan"
grat.append(grat)
grat.append(contentsOf:"Da")

let range = grat.index(grat.endIndex, offsetBy: -5)..<grat.endIndex
grat.removeSubrange(range)
print(grat)

grat = "Darshan"
let range1 = grat.index(grat.startIndex,offsetBy: 2)..<grat.endIndex
grat.removeSubrange(range1)
print(grat)

//substring
grat = "Darshan"
var iatest1 = grat.firstIndex(of: "h") ?? grat.endIndex
var new = grat[..<iatest1]
print(new)

if grat == new {
    print("Strings are equal")
}else{
    print("Strings are not equal")
}


let latinCapitalLetterA: Character = "\u{41}"

let cyrillicCapitalLetterA: Character = "\u{041}"

if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}else{
    print("These two characters are equal")
}

let romeo = ["Act 1 Scene 1: This is public place",
"Act 1 Scene 2: This is important Mission",
"Act 1 Scene 3: This is Very Important",
"Act 2 Scene 1: This is A Horse",
"Act 2 Scene 2: This is A Cow",
"Act 2 Scene 3: This is A Dog",
"Act 2 Scene 4: This is An Elephant"]

var act1scenezcount = 0
for scene in romeo{
    if scene.hasPrefix("Act 1 "){
        act1scenezcount += 1
    }
}
print("There are \(act1scenezcount) scene in Act 1")

//dictionary

//var someDict = [key:Value] ()
var someDict1 = [Int:String] ()
//var someDict2 = [:]
var someDict3: [Int:String] = [:]

//print(someDict.count)
print(someDict1.count)
//print(someDict2.count)
print(someDict3.count)

var dictsome:[Int:String] = [1:"Darshan", 2:"Shubham" ,3:"Shyam"]
var somedictnew = dictsome
print("New Dictionary is \(somedictnew)")

print(somedictnew.count)
somedictnew.removeValue(forKey: 3)
print(somedictnew)

var newcretDict = [5:"Krunal"]

somedictnew.merge(newcretDict){(current, _) in current}
print(somedictnew)
print(newcretDict)

//somedictnew.merging(newcretDict, uniquingKeysWith: Int)

str = "darshan"
//first character capital
print(str.capitalized)

str = "Darshan \"Dangar\" "
print(str)

var str4 = "    gg    gd  hf    "
str4.trimmingCharacters(in: .whitespaces)
print(str4)
print(str4.trimmingCharacters(in: .whitespaces))
print(str4.trimmingCharacters(in: .whitespacesAndNewlines))

var str5 = str4.replacingOccurrences(of: " " , with: "")
print(str5)

var string1 = "darshan Dangar"
string1.reversed()
if string1.contains("r"){
    print("String1 contains r")
}

//print(string1.first)

var strdemo: String = "dangar Darshan"
//strdemo.replaceSubrange("shubham", with: <#T##Collection#>)
var arr100 = strdemo.split(separator: " ")
print(type(of: arr100))
var arr101: [String] = strdemo.components(separatedBy:" ")
var arr5011:String = ""
for i in arr101{
    arr5011 += i
}
print(arr501)
var arr102: [Character] = Array(strdemo)

print(arr101)
var strdemon = arr101.joined(separator: " ")
print(strdemon)
print(arr102)

var demostr: String = String(strdemo.reversed())
print(demostr)

let integ = [1,2,3,4]
let intege: [Int] = []

let usera = [
    [
        "first": "Lucy",
        "last": "Johnsan"
    ],
    [
        "first": "John",
        "last":"Willians"
    ]
]

print(usera)
var axx = usera.shuffled()
print(axx)


//var dictoddict: [Int:[Int:[Int]]] = [
    //1:[2:[3,2,1],2:[3]]]

var dictdemo: [Int:[String:[Int]]] = [1:["one":[1,2,3]]]

var dicti1 = [1:"Darshan",2:"Shubham"]
var dicti2 = [3:"Shyam"]

for (key,value) in dicti2{
    dicti1.updateValue(value, forKey: key)
}
print(dicti1)

var arr22 = ["Darshan","Shubham"]
arr22.append("Shyam")
arr22.dropFirst()
print(arr22)
print(arr22.dropLast())
arr22.insert("Krunal", at: 3)
print(arr22)
var arr23 = [5,4,3,2,1]
print(arr23.min()!)
print(Array(arr23.reversed()))
arr23.reverse()
print(arr23)
arr23.swapAt(0, 4)
print(arr23)

print(arr23.filter({$0 > 4}))
print(arr23.map({$0 + 1}))
print(arr23.prefix(2))
print(arr23.removeLast())
print(arr23.firstIndex(of: 3))

var myArr123: [Int] = [1,2,3]
print(myArr123.count)
myArr123 = []
print(myArr123.count)




var myArray: [String] = ["Darshan","Shubham","Shyam"]
var myDict: [Int:String] = [:]

for i in myArray.indices{
    myDict[i] = myArray[i]
}
print(myDict)

var myDict1: [Int:String] = [1:"Darshan",2:"Shubham",3:"Shyam"]

var myArr1: [String] = []

var values = myDict1.values



var myArr: [Int] = [1,2,3]


//dictionary practice

var myDict101:[Int:String] = [1:"Darshan",2:"Shubham",3:"Shyam"]

print(myDict101)

var keysArray = [1,2,3,4]
var valueArray = ["apple","banana","cat","dog"]

var dict211 = Dictionary(uniqueKeysWithValues: zip(keysArray,valueArray))
print(dict211)


//other type
for (i,j) in zip(keysArray, valueArray){
    dict211[i] = j
}
print(dict211)

var dict22: [Int:String] = [:]
print(dict22)

var dict33:Dictionary<Int,String> = [:]
print(dict33)

var dict34 = [1:"a",2:"b",3:"c",4:"d",5:"e",6:"f",7:"g",8:"h",9:"i",10:"j"]
print(dict34)
print(dict34[5] ?? "e")
print(dict34[6] ?? "f")
print(dict34[10] ?? "j")

for (key,value) in dict34{
    print("Key is:\(key) and value is:\(value)")
}

dict34[5] = "z"
print(dict34[5])
print(dict34)

var dict35:[[String:String]] = [
    [
        "first":"Darshan",
        "last":"Dangar"
    ],
    [
        "first":"Shubham",
        "last":"Bhatt"
    ],
    [
        "first":"Shyam",
        "last":"Buhecha"
    ]
]

for ij in dict35{
    print(ij["first"]!)
}

let productPrice = 300.3456789
let pricision = 3
let formattedPrice = String(format: "%.*f",pricision, productPrice)
print("The formatted price is: ", formattedPrice)

var xcv = 16.40
print(xcv.rounded(.toNearestOrAwayFromZero))
print(xcv.rounded(.towardZero))
print(xcv.rounded(.up))
print(xcv.rounded(.down))

var asdf = "Darshan"
var size = asdf.utf8
print(size)

for i in (1...5).reversed(){
    print(i)
}

for i in stride(from: 5, to: 1, by: -1){
    print(i)
}

for i in stride(from: 0, to: 5, by: 1){
    print(i)
}

var tup = ("Darshan",1,1.5)
print(tup.0)
print(tup.1)

tup.0 = "Dangar"
print(tup.0)

var tup1 = ({return "yyutk'"})
var tup2 = (1,2,3,(4,5,6))
print(tup2.0)
print(tup2.3)
print(tup2.3.0)
print(tup2.3.1)

var tup3 = (1,2,3)


let acc = 50
switch acc {
case 0...10:
    break // Break the switch immediately
case 10...100:
    
    print("between 10 and 100")
default:
    print("100 and above")
}

typealias strg = String

var az: strg = "Darshan"
print(az)

//var azsd = "ddd"
//azsd != nil ? azsd! : "dd"

//for i in 1.5...6.7{
//    print(i)
//}

for i in stride(from: 1.5, to: 6.7, by: 1.5){
    print(i)
}


var aaa:Int? = 11
if aaa! > 10,let aaa = aaa{
    print(aaa)
}

//var acv:Int?
//print(acv)
//
//print(acv!)
//
//print(acv ?? 0)
//
//print(acv as? Int)


var asz:Int?
print(asz)

//var axs:Int
//print(axs)

//

var asdx:Int?
print(asdx)
//asdx = nil
//print(asdx)
asdx = 5
print(asdx)


for i in 1...5{
    print(i)
}

if asdx != nil{
    print(asdx)
}else{
    print("no execute")
}

if let sd = asdx{
    print(sd)
}else{
    print("not execute")
}
func gt(){
    guard let sdf = asdx else{
        return
    }
    print(sdf)
}
gt()

if var sdg = asdx{
    print(sdg)
    print(type(of: sdg))
}else{
    print("not execute")
}

func gc(){
    guard var we = asdx else{
        return
    }
    print(we)
    print(type(of: we))
    we += 5
    print(we)
    
}

gc()

let df:Int? = 11
if df ?? 0 > 10 ,let df = df{
    print(df)
}

var gh:Int! = 5
print(gh)
gh = nil
print(gh)


var hj:Int? = 4
print(hj)
hj = 5
print(hj)

var vb:String!
print(vb)
vb = "Dar"
print(vb ?? "Da")
print(vb)
print(vb!)

//if gh > hj{
//    print("yes")
//}else {
//    print("No")
//}

var ar:[Int] = [1,2,3,4]
for i in [...2]{
    print(i)
}

var tz = ...3
print(type(of: tz))
print(tz.contains(-1000))

var tas = 1...
print(type(of: tas))
print(tas.contains(500))

var dd:Int!
print(dd)

var se:Int! = 5
var es:Int = se
print(es)

var re:String? = "Darshan"
var er:String = re ?? ""
print(er)

var dict100:[String:String] = ["firstName":"Darshan","lastName":"Dangar"]
print(dict100)

dict100["firstName"] = "DD"
print(dict100)

var dict101:[[Int:String]] = [
    [1:"A",2:"b",3:"c"],
    [4:"d",5:"e",6:"f"],
    [7:"g",8:"h",9:"i"]
]

print(dict101)
print(dict101[0][2] ?? "")
for i in dict101{
    print(i)
}

for i in dict101{
    for (i,j) in i.sorted(by: <){
        print("key:\(i) value:\(j)")
    }
}
var trtr:[String] = []
var trt:[Int] = []
for i in dict101{
    for j in i.keys{
        trt.append(j)
    }
    for k in i.values{
        trtr.append(k)
    }
}
print(trt.sorted())
print(trtr.sorted())

for i in dict101{
    for j in i{
        if j.1  == "A"{
            print("A")
        }
    }
}

print(dict101[0][1] ?? "")

print(type(of: dict101))


var shyam:Double? = nil
if (shyam as Double?) != nil{
    print("Hello")
}else{
    print("Not ok")
}

//
//var a11:Int! = nil
//print(a11!)

var A233 = [1,2,3,4]
A233.forEach(){
    i in print(i)
}
A233.split(separator: 2)

var gf = "  asd  yt  "
gf.count
var fg = "ds s"
gf.split(separator: "")
gf.trimmingCharacters(in:.whitespaces)
gf.replacingOccurrences(of: " ", with: "*")
print(gf.compare(fg))


var tg = gf.substring(to: gf.index(gf.startIndex, offsetBy: 5))
tg.count

var range13 = gf.index(after: gf.startIndex)..<gf.index(gf.startIndex, offsetBy: 5)
type(of: range13)
gf.removeSubrange(range13)
gf.count

var beg = gf.startIndex
var con5 = gf.index(gf.startIndex, offsetBy: 5)


var newst = gf[..<con5]
var hjg:Int! = nil
print(hjg)

var sfgh = """
DarDshan
 ssssD
"""
sfgh.trimmingCharacters(in: .uppercaseLetters)
sfgh.trimmingCharacters(in: .whitespacesAndNewlines)


//var dicty = Dictionary<String , Int>() = [:]

let empty1 : Dictionary<String, Double> = Dictionary<String, Double>() // Full syntax
let empty2 :[String:Int] = [String:Int]()
//let empty3:[String:Int]
//type(of: empty3)
let empty4:[Int:Int] = [:]
let type5 = Dictionary<Int,Int>()
let empty6 = [Int:Int]()


//set
//set is collection type che struct mathi define thay che

//create empty set
var emptyset = Set<Int>()

var set1 = Set<Character>()
var set2 = Set<Int>()
var set3 = Set<Double>()
var set4 = Set<Bool>()
var set5 = Set<String>()
//var set6 = Set<[]>()
//var set7 = Set<[:]>()

var studentid:Set = [1,2,3,4,5]
print(studentid)
print(studentid)
var studid:Set<Int> = [1,2,3,4,5]
print(studid)

studentid.insert(6)
print(studentid)
studentid.count
studentid.remove(5)
print(studentid)
studentid.capacity
studid.removeAll()
studid.capacity
studentid.remove(at: studentid.startIndex)
studentid.removeFirst()
studentid.sorted()
print(studentid)
studentid.forEach({i in
    print(i)
})
studentid.contains(5)
studentid.randomElement()
studentid.first
studentid.firstIndex(of: 1)
for i in studentid{
    print(i)
}
//union of two set
//combine two set

var seta:Set = [1,3,5,7,9]
var setb:Set = [2,4,6,8]
var setc = seta.union(setb)
print(seta)
print(setb)
print(setc)
var setd:Set = seta.intersection(setb)
//intersection means both sets same value
print(setd)

var sete:Set = seta.subtracting(setb)
//subtracting means a ane b ma a nu jetlu common hoy etlu nikli jay bakinu a nu vadhe
print(sete)

var setf:Set? = [1,5,2,6,8]
print(seta.subtracting(setf!))

//symetric difference between two set
// bey set mathi jetlu common hoy etlu nikli jay bbakinu rey (bey nu combine thay common remove thay jay)

var setg:Set = seta.symmetricDifference(setf!)
print(setg)

//subset

print(seta.isSubset(of: setf!))
var seth:Set <Bool> = [seta.isSubset(of: setf!)]
print(seth)


if seta == setb{
    print("Both set are equal")
}else{
    print("Both sets are not equal")

}

var sto = Set<String>()
sto.insert("Darshan")
sto.insert("Shubham")
sto.insert("Shyam")

//var difset:Set<Any> = [1,2,3,"Darshan",1.0]
//print(difset)

print(sto)
sto.count
sto.isEmpty
sto.reversed()
sto.removeFirst()
sto.popFirst()
sto.insert("DD")
sto.insert("FF")
print(sto.dropLast())
sto.contains("DD")


var sdf:Set = [2,1,3,5]
var fds:Set = [sdf.sorted()]
sdf.update(with: 6)
print(sdf)

sdf[sdf.index(sdf.startIndex, offsetBy: 1)]
sdf.max()
sdf.min()
sdf.shuffled()
sdf.contains(5)
sdf.update(with: 1)

//function

func sum(a:Int,b:Int) -> Int{
    var c = a + b
    return c
}
var ans = sum(a: 5, b: 6)
print(ans)

func student(name:String) -> String{
    return name
}
print(student(name: "Darshan"))

func stud(name:String){
    print(name)
}
stud(name: "Darshan")

func Std(){
    print("Hello")
}
Std()

func display(no1:Int) -> Float{
    let a = Float(no1)
    return a
}
print(display(no1: 1))
print(display(no1: 2))
print(display(no1: Int(1.1)))

func random() -> Int{
    return Int.random(in: 0...500000)
}
print(random())

func mult(no1:Int,no2:Int) -> Int{
    return no1 * no2
}
print("num is:\(mult(no1: 5, no2: 1))")
print(mult(no1: 5, no2: 2))
print(mult(no1: 15, no2: 3))
print(mult(no1: 50, no2: 50))

func votername() -> Bool{
    return true
}
print(votername())
//print(votername(5))

func ls(array:[Int]) -> (large:Int,small:Int){
    var lar = array[0]
    var sma = array[0]
        for i in array[1..<array.count]{
            if i < sma{
                sma = i
            }else if i > lar{
                lar = i
            }
        }
    return (lar,sma)
    }
var num = ls(array: [5,4,6,2,-50])
print("small number is: \(num.large) and large number is: \(num.small)")

//other

func lsa(array1:[Int]) -> (large:Int,small:Int){
    var lar = array1.max()
    var sma = array1.min()
    return (lar ?? 0, sma ?? 0)
}
print(lsa(array1: [1,2,3,4,8,5,6]))

var xy7 = 5
func sumsub(a:Int , b:Int){
    var d = a + b
    xy7 = 56
    var c = a - b
    print("sum is: \(d),substract is: \(c)")
}
sumsub(a: 5, b: 4)
sumsub(a: 20, b: 30)
sumsub(a: 50, b: 60)
var azs = sumsub(a: 4, b: 5)
print(azs)
print(type(of: azs))


func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "Dave"))


