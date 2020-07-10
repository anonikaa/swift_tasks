
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

//Your task is to add up letters to one letter.
func addLetters(_ letters: [Character]) -> Character {
    let letters = letters.map { $0.lowercased() }
    let alphabet:[Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y","z"]
    var sum = 0
    var count = 1
    var out: Character = "z"
    
    
    
    
    for letter in letters {
        count = 1
        
        for lett  in alphabet {
            if lett == Character(letter){
                sum = sum + count
            } else {
                count += 1
            }
        }
    }
    print("sum = \(sum)")
    
    while sum>26 {
        sum = sum-26
    }
    print("outSum= \(sum)")
    count = 1
    
    for lett in alphabet {
        if sum == count {
        out = lett
        break
        }
        
        if (sum == 0)||(sum == 26) {
            return out
        }
        if sum == count {
            out = lett
            break
        } else {
            count += 1
        }
    }
    print("out = \(out)")
    return out
}


//digits(num: 0)
//growingPlant(100, 10, 910)
addLetters(["z", "z", "z", "z", "a", "z", "z", "z", "b"])

