// Input: 145263 Output: 654321

func descendingOrder(of number: Int) -> Int {
    let string = String(number).sorted(by: >)
    let myResult = string.map(String.init).joined()
    
    let intResult = Int(myResult)
    
    return intResult! // if im sure that my number is not nil, set !
}
