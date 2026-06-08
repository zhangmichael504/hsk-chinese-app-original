# HSK Chinese Learning App — Xcode Project Setup

## How to open in Xcode

1. Open **Xcode** on your Mac
2. Choose **File → New → Project**
3. Select **App** under iOS
4. Fill in:
   - Product Name: `HSKChineseApp`
   - Team: your Apple developer account
   - Bundle Identifier: `com.yourname.HSKChineseApp`
   - Interface: **SwiftUI**
   - Language: **Swift**
   - Minimum Deployment: **iOS 16+**
5. Save the project **inside** the `hsk-chinese-app/` folder
6. **Delete** the default `ContentView.swift` and `<AppName>App.swift` that Xcode creates
7. **Drag all `.swift` files** from these folders into your Xcode project:
   - `HSKChineseApp/` → `HSKChineseApp.swift`
   - `HSKChineseApp/Models/` → `Models.swift`, `ProgressStore.swift`
   - `HSKChineseApp/Data/` → `HSKContent.swift`
   - `HSKChineseApp/Services/` → `TTSService.swift`, `QuizGenerator.swift`
   - `HSKChineseApp/Views/` → `ContentView.swift`, `CardViews.swift`,
     `DayLessonView.swift`, `CharacterTracingView.swift`, `QuizView.swift`
8. Make sure **"Copy items if needed"** is NOT checked (files are already in place)
9. Add **AVFoundation** framework:
   - Select your target → **Frameworks, Libraries, and Embedded Content** → `+` → search `AVFoundation`

## Required Entitlements / Permissions

In `Info.plist` no special permissions are needed (TTS uses the built-in synthesizer with no microphone access).

## Architecture Overview

```
HSKChineseApp/
├── HSKChineseApp.swift          ← App entry point, injects ProgressStore
├── Models/
│   ├── Models.swift             ← HSKWord, HSKSentence, DayUnit, QuizQuestion
│   └── ProgressStore.swift      ← ObservableObject, UserDefaults persistence
├── Data/
│   └── HSKContent.swift         ← All vocabulary & sentences for HSK 1–9
├── Services/
│   ├── TTSService.swift         ← AVSpeechSynthesizer wrapper (zh-CN)
│   └── QuizGenerator.swift      ← Builds 25-question quiz from 5-day cycle
└── Views/
    ├── ContentView.swift         ← Level list, LevelView, DayRow, QuizRow, StatsView
    ├── CardViews.swift           ← WordCardView, SentenceCardView
    ├── DayLessonView.swift       ← Daily lesson (5 words → 5 sentences)
    ├── CharacterTracingView.swift← Finger-tracing canvas with ghost guide
    └── QuizView.swift            ← 25-question quiz, 60% pass threshold
```

## Learning Flow

```
HSK Level (1–9)
└── Cycle 1 (Days 1–5)
    ├── Day 1: 5 words (write/pronounce/listen) + 5 sentences
    ├── Day 2: 5 words + 5 sentences
    ├── Day 3: 5 words + 5 sentences
    ├── Day 4: 5 words + 5 sentences
    ├── Day 5: 5 words + 5 sentences
    └── Quiz: 25 questions covering all 25 words + 25 sentences
        → Pass (≥60%) to unlock Cycle 2
└── Cycle 2 (Days 6–10) ... and so on
```

## Quiz Question Types (5 of each = 25 total)
1. **Listen → pick English meaning** (TTS plays automatically)
2. **See hanzi → pick correct pinyin**
3. **See hanzi → pick English meaning**
4. **Listen → pick correct hanzi character**
5. **See sentence → pick English translation**

## Extending Content
- Add more words/sentences to `HSKContent.swift` in `level4Words` through `level9Words`
- Each level needs 50 words (10 day-units × 5 words) and 50 sentences to fill 10 days
- Levels 4–9 currently have 10 real words + 40 placeholders; replace placeholders with real HSK vocabulary
