
//Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    var largestNum = 0
    let value1 = a*(b+c)
    let value2 = a*b*c
    let value3 = a+b*c
    let value4 = (a+b)*c
    let value5 = a+b+c
    
    if (value1>value2)&&(value1>value3)&&(value1>value4)&&(value1>value5){
        largestNum = value1
    } else if (value2>value3)&&(value2>value4)&&(value2>value5){
        largestNum = value2
    } else if (value3>value4)&&(value3>value5){
        largestNum = value3
    } else if value4>value5{
        largestNum = value4
    } else {
        largestNum = value5
    }
    return largestNum
    
//    ну я чмо,конечно. return max(a + b + c, (a + b) * c, a * (b + c),  a * b * c)
}

//Your task is to find the first element of an array that is not consecutive or nil
func firstNonConsecutive (_ arr: [Int]) -> Int? {
    
    for i in 0...arr.count-2 {
        if (arr[i]+1) != arr[i+1] {
            return arr[i+1]
        }
    }
    return nil
    }

//reverse("world") // returns "dlrow"
func reverse(_ str: String) -> String {
    return String(str.reversed())
}

expressionMatter(1, 2, 1)

firstNonConsecutive([9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 22])
firstNonConsecutive([-2, -1, 0, 1])

reverse("hi")


