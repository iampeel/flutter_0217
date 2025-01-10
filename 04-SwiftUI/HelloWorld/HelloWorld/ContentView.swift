//
//  ContentView.swift
//  HelloWorld
//
//  Created by Jungman Bae on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            doSomething()
        }) {
            Text("Do Something")
        }
    }
    
    func doSomething() {
    }
    
    func takesTooLong() {
    }
}

#Preview {
    ContentView()
}
