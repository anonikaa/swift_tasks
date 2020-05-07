func find_short(_ str: String) -> Int {
    let arrayOfString = str.split(separator: " ")
    var countOfLetters: [Int] = []
    for i in arrayOfString{
        countOfLetters.append(i.count)
    }
    return countOfLetters.min()!
}

find_short("hi there whats going on")
