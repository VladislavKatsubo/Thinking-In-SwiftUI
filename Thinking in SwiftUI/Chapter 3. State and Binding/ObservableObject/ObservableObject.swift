//
//  ObservableObject.swift
//  Thinking in SwiftUI
//
//  Created by Vlad Katsubo on 14.02.24.
//

import SwiftUI

final class CounterModel: ObservableObject {
    @Published var value = 0
}

final class ObservedModel {
    static let shared = ObservedModel()
    var counters: [String: CounterModel] = [:]
    func counterModel(for room: String) -> CounterModel {
        if let m = counters[room] { return m }
        let m = CounterModel()
        counters[room] = m
        return m
    }
}

struct ObservedCounter: View {
    @ObservedObject var model: CounterModel
    var body: some View {
        Button("Increment: \(model.value)") {
            model.value += 1
        }
    }
}

struct PickerContentView: View {
    @State private var selectedRoom = "Hallway"
    var body: some View {
        VStack {
            Picker("Room", selection: $selectedRoom) {
                ForEach(["Hallway", "Living Room", "Kitchen"], id: \.self) { value in
                    Text(value).tag(value)
                }
            }.pickerStyle(.segmented)
            ObservedCounter(model: ObservedModel.shared.counterModel(for: selectedRoom))
        }
    }
}

#Preview {
    PickerContentView()
}
