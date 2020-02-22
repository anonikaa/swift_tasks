func disemvowel(_ s: String) -> String {
    let vowel: [Character] = ["a", "A", "e", "E", "i", "I", "u", "U", "o", "O"]
    
    let result = String(s.filter {!vowel.contains($0)} )
    
return result
}

disemvowel("asdferobknhj")
