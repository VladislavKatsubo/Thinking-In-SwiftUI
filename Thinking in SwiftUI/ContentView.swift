//
//  ContentView.swift
//  Thinking in SwiftUI
//
//  Created by Vlad Katsubo on 29.01.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Greeting()
        }
    }
}

#Preview {
    ContentView()
}


//struct Greeting: View {
//    @ViewBuilder var hello: some View {
//        Image(systemName: "hand.wave")
//        Text("Hello") }
//    @ViewBuilder var bye: some View { 
//        Text("And Goodbye!")
//        Image(systemName: "hand.wave")
//    }
//    var body: some View { 
//        HStack(spacing: 20) {
//            hello
//            Spacer()
//            bye
//        }
//    }
//}

struct Hello: View {
    var body: some View {
        Image(systemName: "hand.wave")
        Text("Hello")
    }
}

struct Bye: View {
    var body: some View {
        Text("and Goodbye!")
        Image(systemName: "hand.wave")
    }
}

struct Greeting: View {
    var body: some View {
        HStack(spacing: 20) {
            Hello()
            Spacer()
            Bye()
        }
    }
}
