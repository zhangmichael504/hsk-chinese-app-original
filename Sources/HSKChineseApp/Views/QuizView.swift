import SwiftUI

// MARK: - Quiz View
struct QuizView: View {
    let level: Int
    let cycleIndex: Int
    @EnvironmentObject var progressStore: ProgressStore
    @Environment(\.dismiss) private var dismiss

    @State private var questions: [QuizQuestion] = []
    @State private var currentIndex = 0
    @State private var selectedAnswer: String? = nil
    @State private var score = 0
    @State private var isFinished = false
    @State private var hasAnswered = false

    private var quizID: String { "L\(level)_Q\(cycleIndex)" }
    private var currentQuestion: QuizQuestion? {
        questions.indices.contains(currentIndex) ? questions[currentIndex] : nil
    }

    var body: some View {
        NavigationStack {
            Group {
                if questions.isEmpty {
                    ProgressView("Generating quiz...")
                } else if isFinished {
                    quizResultView
                } else if let question = currentQuestion {
                    questionView(question)
                }
            }
            .navigationTitle("Quiz — HSK \(level) Cycle \(cycleIndex + 1)")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Exit") { dismiss() }
                }
            }
        }
        .onAppear {
            questions = QuizGenerator.generateQuiz(for: level, cycleIndex: cycleIndex)
        }
    }

    // MARK: - Question View
    @ViewBuilder
    private func questionView(_ question: QuizQuestion) -> some View {
        VStack(spacing: 0) {
            // Progress
            ProgressView(value: Double(currentIndex), total: Double(questions.count))
                .padding(.horizontal)
                .padding(.top, 8)
            Text("Question \(currentIndex + 1) of \(questions.count)  |  Score: \(score)")
                .font(.caption)
                .foregroundColor(.secondary)
                .padding(.top, 4)

            ScrollView {
                VStack(spacing: 20) {
                    // Question prompt
                    questionPromptView(question)

                    // Choices
                    VStack(spacing: 10) {
                        ForEach(question.choices, id: \.self) { choice in
                            choiceButton(choice, question: question)
                        }
                    }
                    .padding(.horizontal)

                    // Feedback
                    if hasAnswered {
                        feedbackView(question)
                    }
                }
                .padding(.vertical)
            }

            Divider()

            // Next button
            Button(hasAnswered ? (currentIndex < questions.count - 1 ? "Next Question" : "See Results") : "Submit") {
                if hasAnswered {
                    advanceQuestion()
                }
            }
            .buttonStyle(.borderedProminent)
            .disabled(!hasAnswered)
            .padding()
        }
    }

    @ViewBuilder
    private func questionPromptView(_ question: QuizQuestion) -> some View {
        VStack(spacing: 12) {
            switch question.type {
            case .listenPickMeaning, .listenPickHanzi:
                Text(question.prompt)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                Button(action: { TTSService.shared.speak(question.hanzi ?? "") }) {
                    Label("Play Audio", systemImage: "speaker.wave.3.fill")
                        .font(.title2)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(12)
                }
                .onAppear { TTSService.shared.speak(question.hanzi ?? "") }

            case .readPickPinyin, .readPickEnglish:
                Text(question.prompt)
                    .font(.system(size: 64))
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8)

            case .sentenceMeaning:
                VStack(spacing: 8) {
                    Text(question.prompt)
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(8)
                    Button(action: { TTSService.shared.speak(question.hanzi ?? "") }) {
                        Label("Listen to sentence", systemImage: "speaker.wave.2")
                    }
                    .buttonStyle(.bordered)
                    Text("Choose the correct English meaning:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(.horizontal)
    }

    @ViewBuilder
    private func choiceButton(_ choice: String, question: QuizQuestion) -> some View {
        let isSelected = selectedAnswer == choice
        let isCorrect = choice == question.correctAnswer
        let buttonColor: Color = {
            guard hasAnswered else { return Color(.secondarySystemBackground) }
            if isCorrect { return Color.green.opacity(0.25) }
            if isSelected && !isCorrect { return Color.red.opacity(0.25) }
            return Color(.secondarySystemBackground)
        }()
        let borderColor: Color = {
            guard hasAnswered else { return isSelected ? .blue : Color(.separator) }
            if isCorrect { return .green }
            if isSelected && !isCorrect { return .red }
            return Color(.separator)
        }()

        Button(action: {
            guard !hasAnswered else { return }
            selectedAnswer = choice
            hasAnswered = true
            if choice == question.correctAnswer { score += 1 }
        }) {
            HStack {
                Text(choice)
                    .multilineTextAlignment(.leading)
                Spacer()
                if hasAnswered {
                    if isCorrect {
                        Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
                    } else if isSelected {
                        Image(systemName: "xmark.circle.fill").foregroundColor(.red)
                    }
                }
            }
            .padding()
            .background(buttonColor)
            .cornerRadius(8)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(borderColor, lineWidth: 1.5))
        }
        .buttonStyle(.plain)
    }

    @ViewBuilder
    private func feedbackView(_ question: QuizQuestion) -> some View {
        let correct = selectedAnswer == question.correctAnswer
        VStack(spacing: 6) {
            Text(correct ? "Correct!" : "Incorrect")
                .font(.headline)
                .foregroundColor(correct ? .green : .red)
            if !correct {
                Text("Correct answer: \(question.correctAnswer)")
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(correct ? Color.green.opacity(0.1) : Color.red.opacity(0.1))
        .cornerRadius(8)
        .padding(.horizontal)
    }

    // MARK: - Quiz Result View
    private var quizResultView: some View {
        let total = questions.count
        let passed = score >= Int(Double(total) * 0.6) // 60% pass threshold

        return VStack(spacing: 24) {
            Image(systemName: passed ? "checkmark.seal.fill" : "xmark.seal.fill")
                .font(.system(size: 64))
                .foregroundColor(passed ? .green : .orange)

            Text(passed ? "Quiz Passed!" : "Keep Practicing")
                .font(.largeTitle)

            Text("Score: \(score) / \(total)")
                .font(.title2)

            Text(passed
                 ? "You can now continue to the next 5 days."
                 : "You need at least 60% to pass. Review the material and try again.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.horizontal)

            if passed {
                Button("Continue") {
                    progressStore.markQuizPassed(quizID)
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
            } else {
                Button("Retry Quiz") {
                    questions = QuizGenerator.generateQuiz(for: level, cycleIndex: cycleIndex)
                    currentIndex = 0
                    score = 0
                    selectedAnswer = nil
                    hasAnswered = false
                    isFinished = false
                }
                .buttonStyle(.borderedProminent)

                Button("Go Back and Review") { dismiss() }
                    .buttonStyle(.bordered)
            }
        }
        .padding()
    }

    // MARK: - Helpers
    private func advanceQuestion() {
        if currentIndex < questions.count - 1 {
            currentIndex += 1
            selectedAnswer = nil
            hasAnswered = false
        } else {
            isFinished = true
        }
    }
}
