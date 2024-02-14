//
//  Counter.Init_value.swift
//  Thinking in SwiftUI
//
//  Created by Vlad Katsubo on 11.02.24.
//

import SwiftUI

struct ParentView: View {
    @State private var initialValue: Int = 0

    // MARK: - Will change `initialValue`
//    var body: some View {
//        VStack {
//            CounterInit_value(value: initialValue)
//            Button("Recreate Counter with New Initial Value") {
//                print("initialValue:", initialValue)
//                self.initialValue = Int.random(in: 1...10)
//            }
//        }
//    }
    
    // MARK: - Will not change `value`
    var body: some View {
        VStack {
            CounterInit_value(value: initialValue)
            Button("Recreate Counter with New Value") {
                print("initialValue:", initialValue)
                self.initialValue = Int.random(in: 1...10)
            }
        }
    }
}

struct CounterInit_value: View {
    @State private var value: Int
    
// MARK: - Will change initialValue
//    init(value: Int = 0) {
//        _value = State(initialValue: value)
//    }
    
// MARK: - Will not change `value`
    init(value: Int = 0) {
        self.value = value
    }
    
    var body: some View {
        Button("Increment: \(value)") {
            print("value: ", value)
            value += 1
        }
    }
}

#Preview {
    ParentView()
}
