//
//  ObservableMacro.1.swift
//  Thinking in SwiftUI
//
//  Created by Vlad Katsubo on 13.02.24.
//

import SwiftUI

//@Observable final class Model {
//    var value = 0
//}
//
//struct CounterObservable: View {
//    @State private var model = Model()
//    
//    var body: some View {
//        Button("Increment: \(model.value)") {
//            model.value += 1
//        }
//    }
//}

@Observable final class Model {
    var value = 0
    static let shared = Model()
}

struct CounterObservableSharedClass: View {
    var model: Model
    var body: some View {
        Button("Increment: \(model.value)") {
            model.value += 1
        }
    }
}

struct ContentViewObservableClass: View {
    var body: some View {
        CounterObservableSharedClass(model: Model.shared)
    }
}

#Preview {
    ContentViewObservableClass()
}
