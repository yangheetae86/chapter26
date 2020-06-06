//
//  Car.swift
//  chapter26
//
//  Created by Y on 2020/06/07.
//  Copyright © 2020 HEETAE YANG. All rights reserved.
//
/* 자동차 모델을 나타내는 구조체.
 이 구조체는 제이슨파일에 있는 각 필드에 대한 프로퍼티를 담고 있으며, Identifiable 프로토콜을 따르도록 선언되어 있어서 각 인스턴스는 List 뷰에서 식별될수있다 */

import SwiftUI

struct Car: Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid:Bool
    
    var imageName: String
}

struct Car_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
