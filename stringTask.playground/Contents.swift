import UIKit
//accum("abcd") -> "A-Bb-Ccc-Dddd"

func accum (inputString: String) {
    let stringArray = inputString.map { // convert to Str array
    String($0)
    }
    
    var firstEl = ""
    var lowLet = ""
    var upLet = ""
    var res = ""
    let count = inputString.count
    let sep = "-"
    
    firstEl = stringArray[0].uppercased() // the first element is upper
    res = firstEl + sep // add "-"
    
    for i in 1...count-1 {
        upLet = stringArray[i].uppercased() //each element is upper
        for c in 1...i {
            if stringArray[i].uppercased() == stringArray[i] { //if element already is upper
                lowLet = lowLet + stringArray[i].lowercased()
            } else {
                lowLet = lowLet + stringArray[i] //count lower elements
            }
            
            if i == count-1 { // if its last element do nothing
               lowLet == lowLet
            } else if c==i {
                lowLet = lowLet + sep //if its not the last element we should separate
            }
        }
            
        res = res + upLet + lowLet
        lowLet = ""
    }
    print (res)
}
accum(inputString: "cwAt")
