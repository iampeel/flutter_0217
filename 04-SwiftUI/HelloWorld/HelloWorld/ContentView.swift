//
//  ContentView.swift
//  HelloWorld
//
//  Created by Jungman Bae on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Text1")
            Text("Text2")
            HStack {
                Text("Text3")
                Text("Text4")
            }
            Text("Text5")
            Text("Hello") + Text(", ") + Text("Hello")
        }
    }
}

#Preview {
    ContentView()
}
