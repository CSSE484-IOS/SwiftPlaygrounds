import Foundation

// DONE: Create the LinearLightsOutGame class
class LinearLightsOutGame: CustomStringConvertible {
    var movesTaken: Int
    var numLights: Int
    var lightStates: [Bool]
    
    init(numLights: Int) {
        movesTaken = 0
        self.numLights = numLights
        lightStates = [Bool](repeating: true, count: numLights)
        initLightStates(numLights)
    }
    
    func initLightStates(_ numLights: Int) {
        for index in 0..<numLights {
            let randomNumber : Int = Int(arc4random_uniform(UInt32(2)))
            randomNumber
            lightStates[index] = randomNumber == 1
        }
    }
    
    func pressedLightAtIndex(_ index: Int) -> Bool {
        if checkForWin() {
            return true
        }
        lightStates[index] = !lightStates[index]
        if index > 0 {
            lightStates[index - 1] = !lightStates[index - 1]
        }
        if index < numLights - 1 {
            lightStates[index + 1] = !lightStates[index + 1]
        }
        movesTaken += 1
        return checkForWin()
    }
    
    func checkForWin() -> Bool {
        for isOn in lightStates {
            if isOn {
                return false
            }
        }
        return true
    }
    
    func getLightsString() -> String {
        var lightsString = ""
        for state in lightStates {
            lightsString += state ? "1" : "0"
        }
        return lightsString
    }
    
    var description: String {
        return "Lights: \(getLightsString()) Moves: \(movesTaken)"
    }
}


/* ----------------- Official Playground testing ----------------- */
var lg = LinearLightsOutGame(numLights: 13)
lg.lightStates = [Bool](repeating: true, count: 13)
lg.pressedLightAtIndex(0)
lg
lg.pressedLightAtIndex(3)
lg
lg.pressedLightAtIndex(6)
lg
lg.pressedLightAtIndex(9)
lg
lg.pressedLightAtIndex(12)
lg
lg.pressedLightAtIndex(1)
lg


var lg2 = LinearLightsOutGame(numLights: 13)
lg2.lightStates = [true, true, false, false, false, false, false, false, false, false, true, true, true]
lg2.pressedLightAtIndex(0)
lg2
lg2.pressedLightAtIndex(11)
lg2
lg2.pressedLightAtIndex(6)
lg2

