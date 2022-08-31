//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Simon Studen on 8/30/22.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.blue)
    }
}

extension View {
    func Title() -> some View {
        modifier(TitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .Title()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
