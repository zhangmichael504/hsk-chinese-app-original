import SwiftUI

// MARK: - Character Tracing View
// User traces the character on screen with their finger.
// A faint ghost of the character is shown behind the canvas as a guide.

struct CharacterTracingView: View {
    let word: HSKWord
    @Environment(\.dismiss) private var dismiss

    @State private var strokes: [[CGPoint]] = []     // completed strokes
    @State private var currentStroke: [CGPoint] = [] // in-progress stroke
    @State private var showGuide = true

    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                // Instruction
                Text("Trace: \(word.hanzi)")
                    .font(.title2)

                Text(word.pinyin)
                    .foregroundColor(.secondary)

                Toggle("Show Character Guide", isOn: $showGuide)
                    .padding(.horizontal)

                // Stroke order hints
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(word.strokeOrder.indices, id: \.self) { i in
                            Text(word.strokeOrder[i].description)
                                .font(.caption2)
                                .padding(6)
                                .background(Color(.tertiarySystemBackground))
                                .cornerRadius(6)
                        }
                    }
                    .padding(.horizontal)
                }

                // Drawing canvas
                ZStack {
                    // Background
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.systemBackground))
                        )

                    // Grid guide lines (like writing practice paper)
                    GeometryReader { geo in
                        let w = geo.size.width
                        let h = geo.size.height
                        Path { path in
                            // Horizontal center
                            path.move(to: CGPoint(x: 0, y: h / 2))
                            path.addLine(to: CGPoint(x: w, y: h / 2))
                            // Vertical center
                            path.move(to: CGPoint(x: w / 2, y: 0))
                            path.addLine(to: CGPoint(x: w / 2, y: h))
                            // Diagonals
                            path.move(to: CGPoint(x: 0, y: 0))
                            path.addLine(to: CGPoint(x: w, y: h))
                            path.move(to: CGPoint(x: w, y: 0))
                            path.addLine(to: CGPoint(x: 0, y: h))
                        }
                        .stroke(Color.gray.opacity(0.15), lineWidth: 0.5)
                    }

                    // Ghost character guide
                    if showGuide {
                        Text(word.hanzi)
                            .font(.system(size: 180, weight: .ultraLight))
                            .foregroundColor(Color.blue.opacity(0.12))
                            .allowsHitTesting(false)
                    }

                    // User-drawn strokes
                    Canvas { context, _ in
                        // Completed strokes
                        for stroke in strokes {
                            drawStroke(stroke, in: &context, color: .black)
                        }
                        // Current in-progress stroke
                        drawStroke(currentStroke, in: &context, color: .black)
                    }
                    .allowsHitTesting(false)

                    // Gesture capture layer
                    Color.clear
                        .contentShape(Rectangle())
                        .gesture(
                            DragGesture(minimumDistance: 0)
                                .onChanged { value in
                                    currentStroke.append(value.location)
                                }
                                .onEnded { _ in
                                    if !currentStroke.isEmpty {
                                        strokes.append(currentStroke)
                                        currentStroke = []
                                    }
                                }
                        )
                }
                .frame(width: 280, height: 280)
                .padding(.horizontal)

                // Action buttons
                HStack(spacing: 16) {
                    Button("Undo Stroke") {
                        if !strokes.isEmpty { strokes.removeLast() }
                    }
                    .buttonStyle(.bordered)
                    .disabled(strokes.isEmpty)

                    Button("Clear") {
                        strokes = []
                        currentStroke = []
                    }
                    .buttonStyle(.bordered)
                    .disabled(strokes.isEmpty && currentStroke.isEmpty)

                    Button("Listen") {
                        TTSService.shared.speak(word.hanzi)
                    }
                    .buttonStyle(.bordered)
                }

                Spacer()
            }
            .padding(.top)
            .navigationTitle("Write Character")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") { dismiss() }
                }
            }
        }
    }

    private func drawStroke(_ points: [CGPoint], in context: inout GraphicsContext, color: Color) {
        guard points.count > 1 else { return }
        var path = Path()
        path.move(to: points[0])
        for pt in points.dropFirst() {
            path.addLine(to: pt)
        }
        context.stroke(path, with: .color(color), style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
    }
}
