import UIKit
//accum("abcd") -> "A-Bb-Ccc-Dddd"

func accum(_ inputString: String) -> String {
    
    if inputString.count == 0 {
      return ""
      }

    let stringArray = Array(inputString)
    
    var firstEl = ""
    var lowLet = ""
    var upLet = ""
    var res = ""
    let count = stringArray.count
    let sep = "-"
    
    firstEl = stringArray[0].uppercased() // the first element is upper
    
    if (inputString.count == 1) { //
      return firstEl
    }
    
    res = firstEl + sep // add "-"
    
    for i in 1...count-1 {
        upLet = stringArray[i].uppercased() //each element is upper
        for c in 1...i {
            if stringArray[i].uppercased() == String (stringArray[i]) { //if element already is upper
                lowLet = lowLet + stringArray[i].lowercased()
            } else {
                lowLet = lowLet + String (stringArray[i]) //count lower elements
            }
            
            if i == count-1 { // if its last element do nothing
            } else if c==i {
                lowLet = lowLet + sep //if its not the last element we should separate
            }
        }
        
        res = res + upLet + lowLet
        lowLet = ""
        }
 
  return res
}
