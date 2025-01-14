//
//  CarData.swift
//  ListNavDemo
//
//  Created by Jungman Bae on 1/14/25.
//

import Foundation

// JSON 파일에서 로드한 Car 배열을 저장하는 전역 변수
var carData: [Car] = loadJson("carData.json")

// 제네릭을 사용한 JSON 파일 로드 함수
// T는 Decodable 프로토콜을 준수해야 함
func loadJson<T: Decodable>(_ filename: String) -> T {
   let data: Data
   
   // 번들에서 파일 URL을 가져옴
   // 실패 시 fatalError 발생
   guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
           else { fatalError("Couldn't find \(filename)") }
   
   do {
       // URL에서 데이터를 로드
       data = try Data(contentsOf: file)
   } catch {
       fatalError("Couldn't load \(filename): \(error)")
   }
   
   do {
       // JSONDecoder를 사용하여 데이터를 지정된 타입 T로 디코딩
       let decoder = JSONDecoder()
       let result = try decoder.decode(T.self, from: data)
       return result
   } catch {
       // 파싱 실패 시 fatalError 발생
       fatalError("Unable to parse \(filename): \(error)")
   }
}
