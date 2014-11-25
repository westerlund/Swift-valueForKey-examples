// Playground - noun: a place where people can play

import Cocoa

class Attempt1 {
    
    var a: String?
    var b: Array<Int>?
    
    subscript(index: String) -> AnyObject? {
        get {
            switch index {
            case "a": return a
            case "b": return b
            default: return nil
            }
        }
        
        set(newValue) {
            switch index {
            case "a": a = newValue as? String
            case "b": b = newValue as? Array<Int>
            default: ()
            }
        }
    }
}

var t = Attempt1()
t["b"] = [1, 2, 3]
t.a // prints nil