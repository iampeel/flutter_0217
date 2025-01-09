//
//  ContentView.swift
//  HelloWorld
//
//  Created by Jungman Bae on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    // 상태를 관리하는 프로퍼티
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 20) { // 수직 스택으로 컨텐츠 정렬
            Text("Count")
                .font(.largeTitle)
            
            Text("\(count)")
                .font(.system(size: 100))
                .fontWeight(.bold)
                // 앞으로 foregroundColor는 foregroundStyle로 변경해서 사용합니다.
                .foregroundStyle(count % 2 == 0 ? .blue : .red) // 짝수/홀수에 따른 색상 변경
            
            HStack { // 수평 스택으로 버튼 정렬
                Button(action: {
                    self.count -= 1
                }, label: {
                    Text("-")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.gray)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                })
                
                Spacer() // 중간 여백
                
                // 버튼의 다른 생성자 함수 사용
                Button("+2", action:{ // action 클로저
                    self.count += 2
                })
                .font(.largeTitle)

                Spacer() // 중간 여백

                Button(action: {
                    self.count += 1
                }) {
                    Text("+")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.green)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                }
            }
        }
        .padding() // 외부 여백 추가
    }
}

#Preview {
    ContentView()
}
