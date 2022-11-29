//
//  StoryItem.swift
//  PDPFacebook
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        ZStack(alignment: .leading){
            Image("story").resizable().frame(width: 150, height: 250)
                .scaledToFit()
            VStack(alignment: .leading){
                Image("profile").resizable().frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue, lineWidth: 5))
                Spacer()
                Text("Hakmirzaev").fontWeight(.bold).font(.system(size: 17)).foregroundColor(.white)
                Text("Bekhruz").fontWeight(.bold).font(.system(size: 17)).foregroundColor(.white)
            }.padding()
        }
        .frame(width: 150, height: 250).cornerRadius(15)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
