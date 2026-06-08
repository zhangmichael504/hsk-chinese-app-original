import Foundation
import Combine

// MARK: - Progress Store (persisted via UserDefaults)

class ProgressStore: ObservableObject {
    // completedDayIDs: Set of day unit IDs the user has finished (e.g. "L1_D1")
    @Published var completedDayIDs: Set<String> {
        didSet { save() }
    }

    // quizPassedIDs: Set of quiz cycle IDs passed (e.g. "L1_Q1" = quiz after days 1-5)
    @Published var quizPassedIDs: Set<String> {
        didSet { save() }
    }

    // Currently unlocked HSK level (1-9)
    @Published var unlockedLevel: Int {
        didSet { save() }
    }

    private let completedKey = "completedDayIDs"
    private let quizKey = "quizPassedIDs"
    private let levelKey = "unlockedLevel"

    init() {
        let defaults = UserDefaults.standard
        let completedArray = defaults.stringArray(forKey: "completedDayIDs") ?? []
        let quizArray = defaults.stringArray(forKey: "quizPassedIDs") ?? []
        self.completedDayIDs = Set(completedArray)
        self.quizPassedIDs = Set(quizArray)
        self.unlockedLevel = defaults.integer(forKey: "unlockedLevel")
        if self.unlockedLevel == 0 { self.unlockedLevel = 1 }
    }

    func markDayComplete(_ dayID: String) {
        completedDayIDs.insert(dayID)
    }

    func markQuizPassed(_ quizID: String) {
        quizPassedIDs.insert(quizID)
    }

    func isDayComplete(_ dayID: String) -> Bool {
        completedDayIDs.contains(dayID)
    }

    func isQuizPassed(_ quizID: String) -> Bool {
        quizPassedIDs.contains(quizID)
    }

    /// Returns how many days in a given level+cycle are completed.
    /// cycleIndex is 0-based (0 = days 0-4, 1 = days 5-9, etc.)
    func completedDaysInCycle(level: Int, cycleIndex: Int) -> Int {
        let start = cycleIndex * 5
        return (start..<start+5).filter { dayIndex in
            completedDayIDs.contains("L\(level)_D\(dayIndex)")
        }.count
    }

    func isDayUnlocked(level: Int, dayIndex: Int) -> Bool {
        // Day 0 of level 1 always unlocked
        // Day N unlocked if day N-1 completed (or quiz passed if crossing cycle boundary)
        if level > unlockedLevel { return false }
        if dayIndex == 0 { return true }

        let cycleOfThisDay = dayIndex / 5
        let positionInCycle = dayIndex % 5

        if positionInCycle == 0 {
            // First day of new cycle — previous cycle's quiz must be passed
            let prevCycleIndex = cycleOfThisDay - 1
            let quizID = "L\(level)_Q\(prevCycleIndex)"
            return isQuizPassed(quizID)
        } else {
            return isDayComplete("L\(level)_D\(dayIndex - 1)")
        }
    }

    func isQuizUnlocked(level: Int, cycleIndex: Int) -> Bool {
        if level > unlockedLevel { return false }
        return completedDaysInCycle(level: level, cycleIndex: cycleIndex) == 5
    }

    private func save() {
        let defaults = UserDefaults.standard
        defaults.set(Array(completedDayIDs), forKey: completedKey)
        defaults.set(Array(quizPassedIDs), forKey: quizKey)
        defaults.set(unlockedLevel, forKey: levelKey)
    }

    func resetAll() {
        completedDayIDs = []
        quizPassedIDs = []
        unlockedLevel = 1
    }
}
