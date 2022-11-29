//
//  RoomItem.swift
//  PDPFacebook
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct RoomItem: View {
    var isOnline = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image("profile").resizable().frame(width: 60, height: 60).cornerRadius(25)
            if isOnline {
                ZStack{
                    Circle().frame(width: 24, height: 24).foregroundColor(.white)
                    Circle().frame(width: 18, height: 18).foregroundColor(.green)
                }
            }
        }
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
