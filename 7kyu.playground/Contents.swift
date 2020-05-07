
//Determine the total number of digits in the integer
func digits(num n: UInt64) -> Int {
    var count = 1
    var number = n
    
    while number>0{
        number = number/10
        count = count+1
    }
    return count
//    нормальные люди сделали через return String(n).count
}

//Each day a plant is growing by upSpeed meters. Each night that plant's height decreases by downSpeed meters
func growingPlant(_ upSpeed: Int, _ downSpeed: Int, _ desiredHeight: Int) -> Int {
    var day = 1
    var night = 0
    var height = upSpeed
    
    while height<desiredHeight {
        height = height-downSpeed
        night = night+1
        print("After night \(night) -> \(height)")
        
        height = height+upSpeed
        day = day+1
        print("After day \(day) -> \(height)")
    }
    
    return day
}


//digits(num: 0)
growingPlant(100, 10, 910)

