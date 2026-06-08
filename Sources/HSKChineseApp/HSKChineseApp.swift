import SwiftUI

@main
struct HSKChineseApp: App {
    @StateObject private var progressStore = ProgressStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(progressStore)
        }
    }
}
