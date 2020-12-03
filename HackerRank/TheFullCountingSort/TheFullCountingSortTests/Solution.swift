import Foundation

class Solution {
    func countingSort(n: Int, x: [(Int, String)]) {
        let maxDashReplace = n / 2
        var counterDashReplace = 0
        
        var sortedValues = [String]()
        var start = Date()
        for _ in 0..<n {
            sortedValues.append(String())
        }
        var end = Date()
        print(end.timeIntervalSince(start))
        
        
        
         start = Date()
        for value in x {
            var valueString = value.1
            if counterDashReplace < maxDashReplace {
                counterDashReplace += 1
                valueString = "-"
            }
            
//            sortedValues[value.0] += "\(valueString) ".unicodeScalars
            sortedValues[value.0].append("\(valueString) ")
            
//            var sortedString = sortedValues[value.0]
//            sortedString += "\(valueString) "
//            sortedValues[value.0] = sortedString
            
        }
         end = Date()
        print(end.timeIntervalSince(start))
        
        
        
        
         start = Date()
        var finalString = ""
        for value in sortedValues {
            finalString += "\(value)"
        }
        print(finalString
//            .trimmingCharacters(in: CharacterSet.whitespaces)
        )
        
         end = Date()
        print(end.timeIntervalSince(start))
    }
}
