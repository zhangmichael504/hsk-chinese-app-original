import Foundation

// MARK: - Core Data Models

struct HSKWord: Identifiable, Codable, Equatable {
    let id: String
    let hanzi: String       // Chinese character(s)
    let pinyin: String      // Romanized pronunciation
    let english: String     // English meaning
    let level: Int          // HSK level 1-9
    let strokeOrder: [StrokePath] // Simplified stroke order hints
}

struct StrokePath: Codable, Equatable {
    let description: String // e.g. "Horizontal left-to-right", used as hint text
}

struct HSKSentence: Identifiable, Codable, Equatable {
    let id: String
    let hanzi: String
    let pinyin: String
    let english: String
    let level: Int
}

// MARK: - Learning Unit (1 day = 5 words + 5 sentences)

struct DayUnit: Identifiable {
    let id: String         // e.g. "L1_D1"
    let level: Int
    let dayIndex: Int      // 0-based within the level
    let words: [HSKWord]
    let sentences: [HSKSentence]
}

// MARK: - Quiz Question Types

enum QuizQuestionType: String, Codable {
    case listenPickMeaning    // Hear audio, pick English meaning
    case readPickPinyin       // See hanzi, pick correct pinyin
    case readPickEnglish      // See hanzi, pick English meaning
    case listenPickHanzi      // Hear audio, pick correct hanzi
    case sentenceMeaning      // See hanzi sentence, pick English
}

struct QuizQuestion: Identifiable {
    let id = UUID()
    let type: QuizQuestionType
    let prompt: String        // What to show/speak
    let hanzi: String?        // For TTS
    let correctAnswer: String
    let choices: [String]     // 4 choices including correct
}
