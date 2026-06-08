import Foundation

// MARK: - Quiz Generator
// Builds quiz questions from 5 days of study material (25 words + 25 sentences)

struct QuizGenerator {

    static func generateQuiz(for level: Int, cycleIndex: Int) -> [QuizQuestion] {
        let allWords = HSKContent.allWords(for: level)
        let allSentences = HSKContent.allSentences(for: level)

        let startDay = cycleIndex * 5
        let endDay = startDay + 5

        // Collect studied words and sentences
        var studiedWords: [HSKWord] = []
        var studiedSentences: [HSKSentence] = []

        for dayIndex in startDay..<endDay {
            let wordStart = dayIndex * 5
            let sentStart = dayIndex * 5
            if wordStart + 5 <= allWords.count {
                studiedWords.append(contentsOf: allWords[wordStart..<wordStart+5])
            }
            if sentStart + 5 <= allSentences.count {
                studiedSentences.append(contentsOf: allSentences[sentStart..<sentStart+5])
            }
        }

        var questions: [QuizQuestion] = []

        // Generate 5 "listen then pick meaning" questions (TTS → pick English)
        let listenWords = studiedWords.shuffled().prefix(5)
        for word in listenWords {
            let distractors = wrongEnglishChoices(for: word, from: allWords)
            let choices = ([word.english] + distractors).shuffled()
            questions.append(QuizQuestion(
                type: .listenPickMeaning,
                prompt: "Listen and choose the correct meaning",
                hanzi: word.hanzi,
                correctAnswer: word.english,
                choices: choices
            ))
        }

        // Generate 5 "see hanzi → pick pinyin" questions
        let pinyinWords = studiedWords.shuffled().prefix(5)
        for word in pinyinWords {
            let distractors = wrongPinyinChoices(for: word, from: allWords)
            let choices = ([word.pinyin] + distractors).shuffled()
            questions.append(QuizQuestion(
                type: .readPickPinyin,
                prompt: word.hanzi,
                hanzi: nil,
                correctAnswer: word.pinyin,
                choices: choices
            ))
        }

        // Generate 5 "see hanzi → pick English meaning" questions
        let meaningWords = studiedWords.shuffled().prefix(5)
        for word in meaningWords {
            let distractors = wrongEnglishChoices(for: word, from: allWords)
            let choices = ([word.english] + distractors).shuffled()
            questions.append(QuizQuestion(
                type: .readPickEnglish,
                prompt: word.hanzi,
                hanzi: nil,
                correctAnswer: word.english,
                choices: choices
            ))
        }

        // Generate 5 "listen → pick hanzi" questions
        let hanziWords = studiedWords.shuffled().prefix(5)
        for word in hanziWords {
            let distractors = wrongHanziChoices(for: word, from: studiedWords)
            let choices = ([word.hanzi] + distractors).shuffled()
            questions.append(QuizQuestion(
                type: .listenPickHanzi,
                prompt: "Listen and choose the correct character",
                hanzi: word.hanzi,
                correctAnswer: word.hanzi,
                choices: choices
            ))
        }

        // Generate 5 "sentence meaning" questions
        let sentenceItems = studiedSentences.shuffled().prefix(5)
        let allOtherSentences = allSentences.filter { s in !studiedSentences.contains(s) }
        for sentence in sentenceItems {
            var distractors = allOtherSentences.shuffled().prefix(3).map { $0.english }
            if distractors.count < 3 {
                distractors = Array(repeating: "Incorrect translation", count: 3 - distractors.count) + distractors
            }
            let choices = ([sentence.english] + Array(distractors)).shuffled()
            questions.append(QuizQuestion(
                type: .sentenceMeaning,
                prompt: sentence.hanzi,
                hanzi: sentence.hanzi,
                correctAnswer: sentence.english,
                choices: choices
            ))
        }

        return questions.shuffled()
    }

    // MARK: - Distractor Helpers

    private static func wrongEnglishChoices(for word: HSKWord, from pool: [HSKWord]) -> [String] {
        pool.filter { $0.id != word.id }.shuffled().prefix(3).map { $0.english }
    }

    private static func wrongPinyinChoices(for word: HSKWord, from pool: [HSKWord]) -> [String] {
        pool.filter { $0.id != word.id }.shuffled().prefix(3).map { $0.pinyin }
    }

    private static func wrongHanziChoices(for word: HSKWord, from pool: [HSKWord]) -> [String] {
        pool.filter { $0.id != word.id }.shuffled().prefix(3).map { $0.hanzi }
    }
}
