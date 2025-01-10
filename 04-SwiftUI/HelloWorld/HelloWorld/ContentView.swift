//
//  ContentView.swift
//  HelloWorld
//
//  Created by Jungman Bae on 1/8/25.
//

import SwiftUI

actor BuildMessage {
    var message: String = ""
    let greeting = "Hello"
    
    func setName(name: String) {
        self.message = "\(greeting) \(name)"
    }
    
    nonisolated func getGreeting() -> String {
        return greeting
    }
}

struct ContentView: View {
    var builder = BuildMessage()

    var body: some View {
        Text("Hello World!")
    }
    
    // 액터의 메서드를 호출하거나 프로퍼티에 접근할 때는 'await' 키워드를 사용해야 합니다.
    func someFunction() async {
        await builder.setName(name: "Jane Smith")
        let message = await builder.message
        print(message)
    }
    
    @MainActor
    func asyncFunction() async {
        await builder.setName(name: "Jane Smith")
        let greeting = builder.getGreeting()
        print(greeting)
    }

    func syncFunction() {
//        builder.setName(name: "Jane Smith") // swift 6 부터는 오류
        let greeting = builder.getGreeting()
        print(greeting)
    }
}

#Preview {
    ContentView()
}
