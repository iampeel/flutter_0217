//
//  ContentView.swift
//  TimerDemo
//
//  Created by Jungman Bae on 1/24/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var timeRemaining : Int = 10 // 초 단위
    @State private var isRunning: Bool = false
    
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("\(String(format: "%02d", timeRemaining / 60)):\(String(format: "%02d", timeRemaining % 60))")
                .font(.system(size: 50, weight: .bold))
                .onTapGesture {
                    // 타이머 숫자를 탭 했을때 1분 > 5분 > 10분 순으로 타이머 설정을 변경하는 코드
                    if timeRemaining < 60 {
                        timeRemaining = 60
                    } else if timeRemaining < 300 {
                        timeRemaining = 300
                    } else if timeRemaining < 600 {
                        timeRemaining = 600
                    } else {
                        timeRemaining = 60
                    }
                }
            
            HStack {
                Button(action: {
                    isRunning.toggle()
                }, label: {
                    Image(systemName: isRunning ? "pause.fill" : "play.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:30, height:30)
                        .padding()
                    
                })
                
                Button(action: {
                    timeRemaining = 60
                }, label: {
                    Image(systemName: "arrow.clockwise")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:30,height:30)
                        .padding()
                })
            }
        }
        .padding()
        .onReceive(timer) { t in
            print("timer tick \(t)")
            if isRunning && timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                isRunning = false
            }
        }
    }
}

#Preview {
    ContentView()
}
