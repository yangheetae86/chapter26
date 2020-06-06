//
//  CarData.swift
//  chapter26
//
//  Created by Y on 2020/06/07.
//  Copyright © 2020 HEETAE YANG. All rights reserved.
//
/* 이번 프로젝트는 carData.json 파일을 읽어와서 Car 객체로 변환한 다음에 배열에 넣는 작업이 필요하다. 이를 위하여 또 다른 스위프트 파일을 추가하며, JSON 파일을 읽고 프로젝트 내의 다른 곳에서 접근할수 있는 배열을 초기화하는 편의 함수를 이 파일에 구현할 것이다. */
import UIKit
import SwiftUI

func loadJson<T: Decodable>(_ filename: String) -> T {
    let data: Data

guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("\(filename) not found.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename): (error)")
    }
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): (error)")
    }
}

struct CarData_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
