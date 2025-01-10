//
//  ContentView.swift
//  HelloWorld
//
//  Created by Jungman Bae on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    var colors: [Color] = [.black, .red, .green, .blue]
    var colorNames = ["Black", "Red", "Green", "Blue"]
    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            List {}

            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 5), value: rotation)
                .foregroundColor(colors[colorIndex])
            
            Slider(value: $rotation, in: 0...360, step: 0.1)
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            List {
                // 기본 피커 스타일을 ListItem 으로 사용할 경우 Label 이 표시됨
                // 기본 스타일 에서는 레이블이 표시되지 않음.
                // ( 접근성을 통한 VoiceOver 음성 안내에서만 활용됨 )
                Picker("Color", selection: $colorIndex) {
                    ForEach(0..<colorNames.count, id: \.self) { color in
                        Text(colorNames[color])
                            .foregroundColor(colors[color])
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
