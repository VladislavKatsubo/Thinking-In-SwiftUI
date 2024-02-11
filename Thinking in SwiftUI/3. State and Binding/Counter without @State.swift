//
//  Counter without @State.swift
//  Thinking in SwiftUI
//
//  Created by Vlad Katsubo on 11.02.24.
//

import SwiftUI

struct StatelessCounter: View {
    private var _value = State(initialValue: 0)
    private var value: Int {
        get { _value.wrappedValue }
        nonmutating set { _value.wrappedValue = newValue }
    }
    
    var body: some View {
        Button("Increment: \(value)") {
            value += 1
        }
    }
}

#Preview {
    StatelessCounter()
}
