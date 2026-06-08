import SwiftUI

// MARK: - Root Content View
struct ContentView: View {
    @EnvironmentObject var progressStore: ProgressStore

    var body: some View {
        NavigationStack {
            List {
                ForEach(1...9, id: \.self) { level in
                    HSKLevelRow(level: level)
                }
            }
            .navigationTitle("HSK Chinese")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Stats") {
                        StatsView()
                    }
                }
            }
        }
    }
}

// MARK: - HSK Level Row
struct HSKLevelRow: View {
    let level: Int
    @EnvironmentObject var progressStore: ProgressStore

    var isUnlocked: Bool { level <= progressStore.unlockedLevel }

    var body: some View {
        NavigationLink(destination: LevelView(level: level).environmentObject(progressStore)) {
            HStack {
                Image(systemName: isUnlocked ? "lock.open" : "lock")
                    .foregroundColor(isUnlocked ? .green : .gray)
                VStack(alignment: .leading, spacing: 2) {
                    Text("HSK Level \(level)")
                        .font(.headline)
                    Text(levelDescription(level))
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                let completed = completedDaysCount(level: level)
                let total = HSKContent.dayUnits(for: level).count
                Text("\(completed)/\(total) days")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .disabled(!isUnlocked)
    }

    private func completedDaysCount(level: Int) -> Int {
        HSKContent.dayUnits(for: level).filter { progressStore.isDayComplete($0.id) }.count
    }

    private func levelDescription(_ level: Int) -> String {
        switch level {
        case 1: return "Beginner — 150 words"
        case 2: return "Elementary — 300 words"
        case 3: return "Pre-Intermediate — 600 words"
        case 4: return "Intermediate — 1,200 words"
        case 5: return "Upper-Intermediate — 2,500 words"
        case 6: return "Advanced — 5,000 words"
        case 7: return "Proficiency — 5,000+ words"
        case 8: return "Higher Proficiency — 5,000+ words"
        case 9: return "Mastery — 5,000+ words"
        default: return ""
        }
    }
}

// MARK: - Level View (shows all day-units and quizzes)
struct LevelView: View {
    let level: Int
    @EnvironmentObject var progressStore: ProgressStore

    private var dayUnits: [DayUnit] { HSKContent.dayUnits(for: level) }
    private var cycleCount: Int { (dayUnits.count + 4) / 5 }

    var body: some View {
        List {
            ForEach(0..<cycleCount, id: \.self) { cycleIndex in
                Section(header: Text("Cycle \(cycleIndex + 1)  (Days \(cycleIndex*5+1)–\(cycleIndex*5+5))")) {
                    // 5 day rows
                    ForEach(0..<5, id: \.self) { offset in
                        let dayIndex = cycleIndex * 5 + offset
                        if dayIndex < dayUnits.count {
                            DayRow(dayUnit: dayUnits[dayIndex], level: level)
                        }
                    }
                    // Quiz row
                    QuizRow(level: level, cycleIndex: cycleIndex)
                }
            }
        }
        .navigationTitle("HSK Level \(level)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Day Row
struct DayRow: View {
    let dayUnit: DayUnit
    let level: Int
    @EnvironmentObject var progressStore: ProgressStore

    var isUnlocked: Bool { progressStore.isDayUnlocked(level: level, dayIndex: dayUnit.dayIndex) }
    var isComplete: Bool { progressStore.isDayComplete(dayUnit.id) }

    var body: some View {
        NavigationLink(destination: DayLessonView(dayUnit: dayUnit).environmentObject(progressStore)) {
            HStack {
                Image(systemName: isComplete ? "checkmark.circle.fill" : (isUnlocked ? "circle" : "lock"))
                    .foregroundColor(isComplete ? .green : (isUnlocked ? .blue : .gray))
                Text("Day \(dayUnit.dayIndex + 1)")
                Spacer()
                Text("5 words · 5 sentences")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .disabled(!isUnlocked)
    }
}

// MARK: - Quiz Row
struct QuizRow: View {
    let level: Int
    let cycleIndex: Int
    @EnvironmentObject var progressStore: ProgressStore
    @State private var showQuiz = false

    var isUnlocked: Bool { progressStore.isQuizUnlocked(level: level, cycleIndex: cycleIndex) }
    var isPassed: Bool { progressStore.isQuizPassed("L\(level)_Q\(cycleIndex)") }

    var body: some View {
        Button(action: { if isUnlocked { showQuiz = true } }) {
            HStack {
                Image(systemName: isPassed ? "checkmark.seal.fill" : (isUnlocked ? "pencil.circle" : "lock"))
                    .foregroundColor(isPassed ? .green : (isUnlocked ? .orange : .gray))
                Text("Quiz — Cycle \(cycleIndex + 1)")
                    .foregroundColor(isUnlocked ? .primary : .secondary)
                Spacer()
                if isPassed {
                    Text("Passed")
                        .font(.caption)
                        .foregroundColor(.green)
                } else if isUnlocked {
                    Text("Ready")
                        .font(.caption)
                        .foregroundColor(.orange)
                } else {
                    Text("Complete all 5 days first")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
        }
        .sheet(isPresented: $showQuiz) {
            QuizView(level: level, cycleIndex: cycleIndex)
                .environmentObject(progressStore)
        }
    }
}

// MARK: - Stats View
struct StatsView: View {
    @EnvironmentObject var progressStore: ProgressStore

    var totalDaysCompleted: Int {
        (1...9).reduce(0) { sum, level in
            sum + HSKContent.dayUnits(for: level).filter { progressStore.isDayComplete($0.id) }.count
        }
    }
    var totalQuizzesPassed: Int { progressStore.quizPassedIDs.count }

    var body: some View {
        List {
            Section("Overall Progress") {
                LabeledContent("Days Completed", value: "\(totalDaysCompleted)")
                LabeledContent("Quizzes Passed", value: "\(totalQuizzesPassed)")
                LabeledContent("Current Level", value: "HSK \(progressStore.unlockedLevel)")
            }

            ForEach(1...9, id: \.self) { level in
                let units = HSKContent.dayUnits(for: level)
                let done = units.filter { progressStore.isDayComplete($0.id) }.count
                Section("HSK Level \(level)") {
                    LabeledContent("Days", value: "\(done) / \(units.count)")
                    ProgressView(value: Double(done), total: Double(max(units.count, 1)))
                }
            }

            Section("Reset") {
                Button("Reset All Progress", role: .destructive) {
                    progressStore.resetAll()
                }
            }
        }
        .navigationTitle("Statistics")
        .navigationBarTitleDisplayMode(.inline)
    }
}
