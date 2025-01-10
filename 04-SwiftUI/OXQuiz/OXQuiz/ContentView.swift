//
//  ContentView.swift
//  OXQuiz
//
//  Created by Jungman Bae on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("다음 수식은 맞을까요?")
                .font(.largeTitle)
                .padding(.top, 20)
            Spacer()
            Text("8 x 0 = 5")
                .font(.largeTitle)
                .padding()
            Spacer()
            HStack {
                Spacer()
                Button(action: {},
                       label: {
                    Label("맞음", systemImage: "checkmark.diamond.fill")
                        .foregroundStyle(.green)
                    })
                Spacer()
                Button(action: {},
                       label: {
                    Label("틀림", systemImage: "xmark.diamond")
                        .foregroundStyle(.red)
                })
                Spacer()
            }
            .font(.system(size: 35, weight: .bold))
            Spacer()
            HStack {
                Spacer()
                Text("0개 맞춤")
                Spacer()
                Text("0개 틀림")
                Spacer()
            }
            .font(.system(size: 30))
            Spacer()
            Button("카운트 초기화", action: {})
                .font(.system(size: 30))
                .padding(.bottom, 20)
        }
    }
}

#Preview {
    ContentView()
}
