var myVariable: Double
myVariable = 50
let myConstant = 42
//myConstant = 50
type(of: myVariable)
myVariable
print(myVariable)

let scores = [34,56,13,54,12,90]
type(of: scores)
var totalPassing = 0
for score in scores {
    if score >= 30 {
        totalPassing += 1
    }
}
totalPassing

totalPassing = 0
for i in 0..<scores.count {
    if scores[i] >= 30 {
        totalPassing += 1
    }
}
totalPassing

print("\(totalPassing) passed out of \(scores.count) students.")
