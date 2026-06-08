import SwiftUI

// MARK: - Daily Lesson View
// Shows 5 words then 5 sentences for a given DayUnit
struct DayLessonView: View {
    let dayUnit: DayUnit
    @EnvironmentObject var progressStore: ProgressStore
    @Environment(\.dismiss) private var dismiss

    // Phase: 0..4 = word index, 5..9 = sentence index
    @State private var phase = 0
    @State private var showTracing = false
    @State private var tracingWord: HSKWord?

    private var totalPhases: Int { 10 } // 5 words + 5 sentences

    private var isWordPhase: Bool { phase < 5 }
    private var currentWord: HSKWord? { isWordPhase ? dayUnit.words[phase] : nil }
    private var currentSentence: HSKSentence? { !isWordPhase ? dayUnit.sentences[phase - 5] : nil }

    var body: some View {
        VStack(spacing: 0) {
            // Progress bar
            ProgressView(value: Double(phase), total: Double(totalPhases))
                .padding(.horizontal)
                .padding(.top, 8)

            Text(isWordPhase ? "Word \(phase + 1) of 5" : "Sentence \(phase - 4) of 5")
                .font(.caption)
                .foregroundColor(.secondary)
                .padding(.top, 4)

            ScrollView {
                if let word = currentWord {
                    WordCardView(word: word, onTraceTap: {
                        tracingWord = word
                        showTracing = true
                    })
                } else if let sentence = currentSentence {
                    SentenceCardView(sentence: sentence)
                }
            }

            Divider()

            // Navigation
            HStack {
                if phase > 0 {
                    Button("Previous") { phase -= 1 }
                        .buttonStyle(.bordered)
                }
                Spacer()
                if phase < totalPhases - 1 {
                    Button("Next") { phase += 1 }
                        .buttonStyle(.borderedProminent)
                } else {
                    Button("Complete Day") {
                        progressStore.markDayComplete(dayUnit.id)
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                }
            }
            .padding()
        }
        .navigationTitle("Day \(dayUnit.dayIndex + 1) — HSK \(dayUnit.level)")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showTracing) {
            if let word = tracingWord {
                CharacterTracingView(word: word)
            }
        }
    }
}
