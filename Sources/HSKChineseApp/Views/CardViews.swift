import SwiftUI

// MARK: - Word Card View (shows hanzi, pinyin, english + TTS button)
struct WordCardView: View {
    let word: HSKWord
    @State private var showPinyin = true
    @State private var showEnglish = true
    let onTraceTap: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            // Large character display
            Text(word.hanzi)
                .font(.system(size: 72, weight: .regular))
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)

            // TTS Button
            Button(action: { TTSService.shared.speak(word.hanzi) }) {
                Label("Listen", systemImage: "speaker.wave.2")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            // Pinyin row
            HStack {
                Text("Pinyin:")
                    .foregroundColor(.secondary)
                Spacer()
                if showPinyin {
                    Text(word.pinyin)
                        .font(.title3)
                } else {
                    Text("Tap to reveal")
                        .foregroundColor(.secondary)
                        .italic()
                }
            }
            .onTapGesture { showPinyin.toggle() }
            .padding(.horizontal)

            Divider()

            // English row
            HStack {
                Text("English:")
                    .foregroundColor(.secondary)
                Spacer()
                if showEnglish {
                    Text(word.english)
                        .font(.title3)
                } else {
                    Text("Tap to reveal")
                        .foregroundColor(.secondary)
                        .italic()
                }
            }
            .onTapGesture { showEnglish.toggle() }
            .padding(.horizontal)

            Divider()

            // Stroke order hints
            VStack(alignment: .leading, spacing: 4) {
                Text("Stroke Order Hints:")
                    .font(.caption)
                    .foregroundColor(.secondary)
                ForEach(word.strokeOrder.indices, id: \.self) { i in
                    Text("• \(word.strokeOrder[i].description)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal)

            // Practice Writing Button
            Button(action: onTraceTap) {
                Label("Practice Writing", systemImage: "pencil")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

// MARK: - Sentence Card View
struct SentenceCardView: View {
    let sentence: HSKSentence
    @State private var showPinyin = false
    @State private var showEnglish = false

    var body: some View {
        VStack(spacing: 16) {
            Text(sentence.hanzi)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)

            Button(action: { TTSService.shared.speak(sentence.hanzi) }) {
                Label("Listen", systemImage: "speaker.wave.2")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            HStack {
                Text("Pinyin:")
                    .foregroundColor(.secondary)
                Spacer()
                if showPinyin {
                    Text(sentence.pinyin)
                        .font(.callout)
                        .multilineTextAlignment(.trailing)
                } else {
                    Text("Tap to reveal")
                        .foregroundColor(.secondary)
                        .italic()
                }
            }
            .onTapGesture { showPinyin.toggle() }
            .padding(.horizontal)

            Divider()

            HStack {
                Text("English:")
                    .foregroundColor(.secondary)
                Spacer()
                if showEnglish {
                    Text(sentence.english)
                        .font(.callout)
                        .multilineTextAlignment(.trailing)
                } else {
                    Text("Tap to reveal")
                        .foregroundColor(.secondary)
                        .italic()
                }
            }
            .onTapGesture { showEnglish.toggle() }
            .padding(.horizontal)
        }
        .padding()
    }
}
