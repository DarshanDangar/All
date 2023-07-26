//: [Previous](@previous)

import Foundation

// 1.    Create following string manipulation functions using string extensions:

extension String {
    
    func count() {
        print(self.count)
    }
    
}

"Dar".count()

// 2.    Add a character in a string at 5th position

extension String {
    
   mutating func addCharacter(char: Character) {
        self.insert(char, at: self.index(self.startIndex, offsetBy: 5))
    }
    
}

var str = "Darshan"
str.addCharacter(char: "X")

// 3.   Replace one character with other in a string

extension String {
    
    func replace(_ chaOld: Character, _ chaNew: Character) -> String{
       return self.replacingOccurrences(of: String(chaOld) , with: String(chaNew))
    }
    
}

var replace = "Abcdef"
print(replace.replace("c", "z"))
print(replace)

var t = [5,4,6,7]

// 4.    Remove white spaces from string

extension String {
    
    func removeWhiteSpace() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    
}

var removeWhiteSpace = "Da rs ha n"
removeWhiteSpace.removeWhiteSpace()

// 5.    Get number of words in a string

extension String {
    
    func countWords() -> Int {
        return self.split(separator: " ").count
    }
    
}

print("Dar shan  Da ng ar".countWords())
