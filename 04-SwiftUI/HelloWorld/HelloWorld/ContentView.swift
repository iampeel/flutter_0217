//
//  ContentView.swift
//  HelloWorld
//
//  Created by Jungman Bae on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
//            .frame(minWidth: 100, maxWidth: 300, minHeight: 100, maxHeight: 100, alignment: .center)
            .border(Color.black)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.red)
//            .ignoresSafeArea(.all)
//            .frame(width: 300, height: 100, alignment: .center)
    }
}

#Preview {
    ContentView()
}
