// Basic enum
enum Weekday {
    case monday
    case tuesday, wednesday, thursday, friday
}

var today: Weekday
today = .tuesday
//today.rawValue

switch today {
case .monday, .tuesday, .thursday:
    print("You have class")
case .wednesday, .friday:
    print("You don't have class")
default:
    print("Enjoy the weekend!")
}

// Rawvalues
enum State: Int {
    case ready = 0
    case set
    case go
}

var raceState = State.set
raceState.rawValue

var nextRaceState = State(rawValue: raceState.rawValue + 1)
if nextRaceState == .go {
    print("GO!!!!")
}
nextRaceState
type(of: nextRaceState)
nextRaceState?.rawValue

// Associated values and functions
enum HwStatus {
    case noHw
    case inProgress(Int, Int)
    case done
    
    func simpleDescription() -> String {
        switch self {
        case .noHw:
            return "No homework. Yeah!"
        case .inProgress(let numComplete, let totalToDo):
            return "Finished \(numComplete) out of \(totalToDo)"
        case .done:
            return "Done!"
        }
    }
}

var myHwStatus = HwStatus.inProgress(2, 5)
myHwStatus.simpleDescription()

myHwStatus = .done
myHwStatus.simpleDescription()
