//
//  Counter.swift
//  Thinking in SwiftUI
//
//  Created by Vlad Katsubo on 11.02.24.
//

import SwiftUI

struct Counter: View {
    @State private var value = 0
    var body: some View {
        Text("\(value)")
        HStack {
            Image(systemName: "plus").foregroundStyle(.blue)
            Button("Decrement") {
                value += 1
            }
        }
        HStack {
            Image(systemName: "minus").foregroundStyle(.blue)
            Button("Decrement") {
                value -= 1
            }
        }
    }
}

#Preview {
    Counter()
}
