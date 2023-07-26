import UIKit

var greeting = "Hello, playground"
//variable

var a:Int = 5
let b: Int = 5
print(a)
print(b)

var c:Character = "D"
print(c)

var d:Double = 5
print(d)

var e:Float = 6
print(e)

let f:Bool = true
print(f)

var g:String = "Darshan"
print(g)

var h:Int = 1

h += 5

print(h)

let interest = 15 //% yearly
var amount = 10000
var duration = 2 //months

var amountofinterest = (amount * interest) / 100
var durationviseprice = (amountofinterest * duration) / 12

print("2 month interest is:\(durationviseprice)")

//operstor

var str = "Darshan"
var str1 = " Dangar"

str += str1
print(str)

var x:Int = 5
var y:Int = 6

var z:Int = x + y
print(z)
z = y - x
print(z)
z = x * y
print(z)
z = y / x
print(z)

var j:Float = 5
var k:Float = 6
var l:Float = j + k
print(l)
l = k - j
print(l)
l = j * k
print(l)
l = k / j
print(l)

var m = Float(x) + j
print(m)
var n = x + Int(j)
print(n)

var marks = 88
var result = (marks > 33) ? "Pass" : "Fail"
print("Congratulations you are "+result+" in the exam" )

//working with text

//1

var string1 = "Simform"
if string1.count < 2{
    print(string1)
}else{
    print(string1.prefix(2))
}

//2
if string1.count < 2{
    print(string1)
}else{
    let range = string1.index(string1.startIndex, offsetBy: 1)..<string1.index(before: string1.endIndex)
    var string2 = string1.substring(with:range)
    print(string2)
}


//3
var string2 = "Swift"
var string3 = string2.dropFirst()
string3 += "Examples".dropFirst()
print(string3)

//3
string2.remove(at: string2.startIndex)
string3 = "Examples"
string2 += string3.dropFirst()
print(string2)


//4
var string4 = "Swift"
if string4.contains("Sw"){
    print("true")
}
//4
print(string4.hasPrefix("Sw"))

//4

if string4.starts(with: "Sw"){
    print("String start with Sw")
    print("true")
}

//5

var string5 = "Simform Solutions"
var string51 = string5.prefix(3) + string5.suffix(3)

print(string51)

//6
let greeting1 = "Welcome"
var name = "Darshan"
print(greeting1 + " " + name)

var pr = 2
var num = 3
var ckpr = "\(num) cookies: $\(pr * num)"
print(ckpr)

var con = greeting1 + " We're glad you're here"
print(con)

let name1 = "Darshan Dangar"
let firstSpace = name1.firstIndex(of: " ") ?? name1.endIndex
let firstname = name1[..<firstSpace]
print("substring is:\(firstname) and its length is \(firstname.count)")

let cafe = "Cafe\u{301} du 🌍"
print(cafe)

print(cafe.count)
print(Array(cafe))

print(cafe.unicodeScalars.count)
print(Array(cafe.unicodeScalars))
print(cafe.unicodeScalars.map({$0.value})) //ascii value

print(cafe.utf16.count)
print(Array(cafe.utf16))

var string8 = "Darshan"
print(string8[string8.startIndex])
print(string8[string8.index(after: string8.startIndex)])




for i in 1...5{
    print("*")
}

string8 = String()
print(string8)

string8.write("Dangar")
print(string8)

string8.append(" Dangar")
string8.append(contentsOf: " Hello")
string8.reserveCapacity(5)

string8.insert("D", at: string8.endIndex)
string8.insert(contentsOf: "Hello ", at: string8.endIndex)

let range1 = string8.index(string8.startIndex, offsetBy: 2)..<string8.index(before: string8.endIndex)
string8.replaceSubrange(range1, with: "Dangar")

print(string8.remove(at: string8.index(string8.startIndex, offsetBy: 5)))
string8.uppercased()
print(string8)
string8.lowercased()
print(string8)
string8.localizedLowercase
print(string8)
string8.localizedCapitalized
print(string8)



//controlflow

var N = 200
var power = 2
var ans = 1
for i in 1...N{
    ans = ans * 2
    if ans <= N{
        print(ans)
    }else{
        break
    }
}

//2
var m1 = 3
for i in 1...m1{
    for j in 1...m1{
        print("#" , terminator: "")
    }
    print("")
}

//3

var n1 = 4
for i in 1...n1{
    for j in 1...i{
        print("#" , terminator:"")
    }
    print("")
}

//4

var n2 = 4
for i in 1...n2{
    for _ in 0...(n2-i){
        print(" ",terminator: " ")
    }
    for _ in 1...(i*2)-1{
        print("#",terminator: "")
    }
    print("")
}
        
//5

var number = 17

if number == 0 || number == 1{
    print("\(number) is not prime number")
}
for _ in 2..<number{
    if number % 2 == 0{
        print("\(number) is not prime number")
        break
    }else if number % 3 == 0{
        print("\(number) is not prime number")
        break
    }else if number % 4 == 0{
        print("\(number) is not prime number")
        break
    }else if number % 5 == 0{
        print("\(number) is not prime number")
        break
    }else if number % 6 == 0{
        print("\(number) is not prime number")
        break
    }else if number % 7 == 0{
        print("\(number) is not prime number")
        break
    }else if number % 8 == 0{
        print("\(number) is not prime number")
        break
    }else if number % 9 == 0{
        print("\(number) is not prime number")
        break
    }else{
        print("\(number) is prime number")
        break
    }
}


//Array
//1

var arr1: [Int] = [1,2,3,1]
if arr1.count >= 1{
    if arr1[0] == arr1[arr1.count-1]{
        print("true")
    }
}else{
    print("Enter new array")
}

//2

var arr2:[Int] = [1,2,3,4]
var arr21:[Int] = Array(repeating: 0, count: arr1.count * 2 - 1)
arr21.append(arr1.endIndex)

//3

var arr3:[Int] = [0,1,2,3]
var arr31:[Int] = []
arr31.append(arr3.startIndex)
arr31.append(arr3.index(after: arr3.startIndex))
print(arr31)


//4
var arr4:[Int] = [0,50,100,20,80,150]
arr4.max()
//othe
arr4.sort()
var arr41 = arr4[arr4.count - 1]
print(arr41)
var temp:[Int] = []

/*for i in arr4{
    for j in arr4{
        if arr4[i] > arr4[j]{
            temp = arr4[i]
            arr4[i] = arr4[j]
            arr4[j] = temp
        }
    }
}
for i in arr4{
    print(arr4[i])
}*/
 
//5

var arr5:[Int] = [0,5,6,2,10]
arr5.sort(by: >)

//other
arr5.sort()
print(Array(arr5.reversed()))

//6
var listOfNumbers = [1,2,3,10,100]
var divisors = [2,5]
var number6:[Int] = []

for i in listOfNumbers{
    for j in divisors{
        if (i % j) == 0{
            number6.append(i)
            print("number is \(i)")
            break
        }
    }
}
print(number6)
//extra practice
for i in listOfNumbers.indices{
    print(i)
}
for (i, k) in listOfNumbers.enumerated(){
    print(i, k)
}

var arr7:[Int] = [1,2,3,4,5]
var arr71:[Int] = [6,7,8]
arr7 += arr71
print(arr7)
var arr72 = arr7 + arr71
print(arr72)

print(arr72[2])
arr72.first
arr72.last
print(arr72.customMirror)
arr72.description
arr72.distance(from: 1, to: 6)
arr72.hashValue
arr72.capacity
arr72.randomElement()
arr72.popLast()








//dictionary

var code = [

"a" : "b",

"b" : "c",

"c" : "d",

"d" : "e",

"e" : "f",

"f" : "g",

"g" : "h",

"h" : "i",

"i" : "j",

"j" : "k",

"k" : "l",

"l" : "m",

"m" : "n",

"n" : "o",

"o" : "p",

"p" : "q",

"q" : "r",

"r" : "s",

"s" : "t",

"t" : "u",

"u" : "v",

"v" : "w",

"w" : "x",

"x" : "y",

"y" : "z",

"z" : "a"
]

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"

//for i in encodedMessage{
    //print("\(code[i].value)")
    //}
for i in encodedMessage{
    
    print("\(code[String(i)])")
    
}
    for (key,value) in code{
        print("\(key): \(value)")
    }


//2

var people: [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[

"firstName": "Noel",

"lastName": "Bowen"

]

]
var narray:[String] = []
for ij in people{
    narray.append(ij["firstName"]!)
}
print(narray)


//3

var people3: [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[
    "firstName": "Noel",

    "lastName": "Bowen"

]

]

var dictArr3:[String] = []
for i in people3{
    
    dictArr3.append("\(i["firstName"]!) \(i["lastName"]!)")
    //dictArr3.append(contentsOf: i["firstName"]! + i["lastName"]!)
}
print(dictArr3)

//4

var people4: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 12

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]

var score = people4.first?["score"] as? Int ?? 0
var personname = people4.first?["firstName"] as? String ?? ""

for i in people4{
    if score > i["score"] as! Int{
        score = i["score"] as? Int ?? 0
        personname = "\(i["firstName"] as? String  ?? "") \(i["lastName"] as? String ?? "")"
//        personname = i["firstName"] as? String  ?? ""
//        personname += i["lastName"] as? String ?? ""
    }
}

print(personname)



//5

var people5: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 23

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]
//
var count5 = 1
people5.sort(by: { ($0["score"] as? Int ?? 0) > ($1["score"] as? Int ?? 0)})
for i in people5{
    print("\(count5). \(i["firstName"] as? String ?? "") \(i["lastName"] as? String ?? "") - \(i["score"] as? Int ?? 0)")
    count5 += 1
}

//extra

//var count = 1
////var score1:[Int] = people5.first?["score"] as? Int ?? 0
////var name5:[String] = people5.first?["firstName"] as? String ?? ""
////for i in people5{
////    if score1 > i["score"] as! Int{
////      score1 = i["score"] as? Int ?? 0
////        name5 = "\(i["firstName"] as? String  ?? "") \(i["lastName"] as? String ?? "")"
////
////
////    }
////  print("\(count). \(i["firstName"] as? String ?? "") \(i["lastName"] as? String ?? "") - \(i["score"] as? Int ?? 0)")
////  //print("\(count). \(name1) - \(i["score"] as? Int ?? 0)")
////    count += 1
////}
////print(people5[0]["firstName"]!)
////for i in people5{
////    if let xc = people5["score"].sorted(using: >){
////
////    }
////}
//
////for i in people5{
////    if score1 < i["score"] as? Int ?? 0{
////        score1 = i["score"] as? Int ?? 0
////        name5 = i["firstname"] as? String ?? ""
////
////    }
////    print("\(count). \(i["firstName"] as? String ?? "") \(i["lastName"] as? String ?? "") - \(i["score"] as? Int ?? 0)")
////    count += 1
////}
////var count = 1
////var score1 = 0
////var name51 = ""
////for i in people5{
////    if score1 > i["score"] as? Int ?? 0{
////        score1 = i["score"] as? Int ?? 0
////        name51 = "\(i["firstName"] as? String ?? "") \(i["lastName"] as? String ?? "")"
////
////    }
////
////}
////for i in score1{
////    for j in name51{
////        print("\(count). \(name51) - \(score1)")
////        count += 1
////    }
////}
////var score5:[Int?] = people5.first?["score"] as? Int ?? 0
////var personname5:[String?] = people5.first?["firstName"] as? String ?? ""
////for i in people5{
////    if score5 > i["score"] as! Int{
////        score5 += i["score"] as? Int ?? 0
////        personname5 += "\(i["firstName"] as? String  ?? "") \(i["lastName"] as? String ?? "")"
//////        personname = i["firstName"] as? String  ?? ""
//////        personname += i["lastName"] as? String ?? ""
////    }
////    //print("\(personname5) \(score5)")
////}
////print("\(personname5) \(score5)")
//////print(personname)
/////
/////
//
////for i in people5{
////    if let people 51 = people5.sort(by: $0["score"] > $1["score"]){
////
////    }
////}
////for i in people5{
////    var sort:[Int?] = i["score"].sorted(using: >) as? [Int] ?? 0
////    print(sort)
////
////}
//var count = 0
//var score5 = people5.first?["score"] as? Int ?? 0
//var score55:[Int]?
//var personname5 = people5.first?["firstName"] as? String ?? ""
//var personname55:[String]?
//
//for i in people5{
//    if score5 > i["score"] as! Int{
//        score5 = i["score"] as? Int ?? 0
//        score55?.append(score5)
//        personname5 = "\(i["firstName"] as? String  ?? "") \(i["lastName"] as? String ?? "")"
//        personname55?.append(personname5)
////        personname = i["firstName"] as? String  ?? ""
////        personname += i["lastName"] as? String ?? ""
//    }
//}
////for i in score55 as? Int ?? 0{
////    for j in personname55 as! String {
////        print("\(count). \(j) - \(i)")
////        count += 1
////    }
////}
////var arr56:[Int]?
////for i in people5{
////    arr56?.append(i["score"]! as! Int)
////
////}
//
////for i in people5{
////
////    print("\(i["score"])")
////    if let score55 = i.f["score"]{
////
////    }
////
////}

//6

var numbers6 = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

var count66:[Int:Int] = [:]
for i in numbers6.sorted(){
    count66[i] = (count66[i] ?? 0) + 1
}
print(count66)
for (key,value) in count66.sorted(by: <){
    print("\(key) \(value)")
}

//var count = 0
//for ij in numbers6.sorted().indices{
//
//    if (numbers6[ij]==numbers6[ij+1]) {
//        if(ij == numbers6.count-2){break}
//        count += 1
//    }else{
//        print("\() \(count)")
//        count=0
//    }
//
//
//}

//var count6 = 1
//for i in numbers6.sorted(){
//    if numbers6[i] == numbers6[i+1] {
//        count6 = count6 + 1
//        print("\(numbers6[i]) \(count6)")
//    }else{
//        print("\(i) \(count6)")
//        count6 = 1
//    }
//}


//for i in numbers6.sorted(){
//    if ({($0) == ($1)}){
//        count6 += 1
//        print("\(i) \(count6)")
//    }else{
//        count6 = 1
//    }
//}




//var count6 = 0
//for i in numbers6.sorted().indices{
//    if ({($0) == ($1)}){
//        count6 += 1
//    }else
//    {
//        count6 = 0
//    }
//}












