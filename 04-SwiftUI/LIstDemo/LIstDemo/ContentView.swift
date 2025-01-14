//
//  ContentView.swift
//  LIstDemo
//
//  Created by Jungman Bae on 1/14/25.
//

import SwiftUI

// Identifiable 프로토콜을 준수하는 ToDoItem 구조체 정의
// UUID를 통해 각 항목을 고유하게 식별
struct ToDoItem: Identifiable {
    let id: UUID = UUID()  // 자동으로 생성되는 고유 식별자
    var task: String       // 할 일 텍스트
    var imageName: String  // SF Symbols 이미지 이름
}

struct ContentView: View {
    // 토글 상태를 저장하는 State 변수
    @State var toggleStatus: Bool = false
    
    // ToDo 항목들을 저장하는 State 배열
    @State var listData: [ToDoItem] = [
        ToDoItem(task: "Take out trash", imageName: "trash.circle.fill"),
        ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
        ToDoItem(task: "Wash the car", imageName: "car.fill")
    ]
    
    var body: some View {
        List {
            // 설정 섹션
            Section(header: Text("Settings")) {
                // 알림 허용 토글 스위치
                Toggle(isOn: $toggleStatus) {
                    Text("Allow Notifications")
                }
            }
            
            // ToDo 태스크 섹션
            Section(header: Text("To Do Tasks")) {
                // listData 배열의 각 항목을 순회하며 표시
                ForEach(listData) { item in
                    HStack {
                        Image(systemName: item.imageName)  // SF Symbols 이미지
                        Text(item.task)                    // 할 일 텍스트
                    }
                }
            }
        }
        // 당겨서 새로고침 기능 추가
        .refreshable {
            // 새로운 ToDo 항목들로 리스트 갱신
            listData = [
                ToDoItem(task: "Order dinner", imageName: "dollarsign.circle.fill"),
                ToDoItem(task: "Call financial advisor", imageName: "phone.fill"),
                ToDoItem(task: "Sell the kids", imageName: "person.2.fill")
            ]
        }
    }
}

#Preview {
    ContentView()
}
