
class Solution {
    
    func intToRoman(_ num: Int) -> String {
        let numerals = [["I", "V"], ["X", "L"], ["C", "D"], ["M", ""]]
        var romanNumeral = ""
        var counter = 0
        var number = num
        while number > 0 {
            let part = number % 10
            number = number / 10
            var partRoman = ""
            if part <= 3 && part > 0 {

                for _ in 0..<part {
                    partRoman.append(numerals[counter][0])
                }
                
            } else if part == 4 {
                partRoman = String("\(numerals[counter][0])\(numerals[counter][1])")
            } else if part == 5 {
                partRoman = String("\(numerals[counter][1])")
            } else if part <= 8  && part > 0 {
                partRoman = numerals[counter][1]
                for _ in 5..<part {
                    partRoman.append(numerals[counter][0])
                }
            } else if part == 9 {
                partRoman = String("\(numerals[counter][0])\(numerals[counter + 1][0])")
            }
            partRoman.append(romanNumeral)
            romanNumeral = partRoman
            counter += 1
        }
        return romanNumeral
    }
}
