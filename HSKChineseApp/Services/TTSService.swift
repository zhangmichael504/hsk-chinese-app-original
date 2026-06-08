import AVFoundation

class TTSService {
    static let shared = TTSService()
    private let synthesizer = AVSpeechSynthesizer()

    private init() {}

    /// Speak Chinese text using the device's built-in Mandarin TTS
    func speak(_ text: String) {
        // Stop any ongoing speech first
        if synthesizer.isSpeaking {
            synthesizer.stopSpeaking(at: .immediate)
        }
        let utterance = AVSpeechUtterance(string: text)
        // zh-CN = Mandarin Chinese (Simplified)
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-CN")
            ?? AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate = AVSpeechUtteranceDefaultSpeechRate * 0.75  // slightly slower for learning
        utterance.pitchMultiplier = 1.0
        synthesizer.speak(utterance)
    }

    func stop() {
        synthesizer.stopSpeaking(at: .immediate)
    }
}
