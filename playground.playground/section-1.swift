// Playground - noun: a place where people can play

import Cocoa

class Attempt1 {
    
    var a: AnyObject?
    var b: AnyObject?
    
    final private var dictionary: Dictionary<String, AnyObject> = Dictionary<String, AnyObject>() {
        didSet {
            a = dictionary["a"]
            b = dictionary["b"]
        }
    }
    
    subscript(index: String) -> AnyObject? {
        get {
            return dictionary[index]
        }
        
        set(newValue) {
            dictionary[index] = newValue
        }
    }
    
    init(_ dictionary: Dictionary<String, AnyObject>) {
        self.dictionary = dictionary
    }
}

var t = Attempt1(["a": "monkey"])
t["b"] = [1, 2, 3]
t.a // prints monkey