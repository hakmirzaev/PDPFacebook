//
//  PostItem.swift
//  PDPFacebook
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct PostItem: View {
    var img_url = "photo1"
    var body: some View {
        VStack{
            // header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("profile").resizable().frame(width: 50, height: 50).cornerRadius(25)
                    ZStack{
                        Circle().frame(width: 20, height: 20).foregroundColor(.white)
                        Circle().frame(width: 16, height: 16).foregroundColor(.green)
                    }
                }
                VStack(alignment: .leading, spacing: 5){
                    Text("Bekhruzjon").fontWeight(.bold)
                    HStack{
                        Text("18m")
                        Image(systemName: "globe.americas.fill")
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                }
                
            }.padding(.leading, 10).padding(.top, 10).padding(.trailing, 10)
            // image
            Image(img_url).resizable().scaledToFit()
            // like, love, counts for comment and share
            HStack{
                HStack(spacing: -6){
                    Image(systemName: "hand.thumbsup.circle.fill").foregroundColor(.blue)
                    Image(systemName: "heart.circle.fill").foregroundColor(.red)
                }
                Text("8.4K").foregroundColor(.black.opacity(0.7))
                Spacer()
                Text("240 Comments").foregroundColor(.black.opacity(0.7))
                Text("54 Shares").foregroundColor(.black.opacity(0.7))
            }.padding(.leading, 10).padding(.top, 10).padding(.trailing, 10)
            HStack{}.frame(maxWidth: .infinity).frame(height: 1)
                .background(Color.gray.opacity(0.3))
            HStack{
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "hand.thumbsup.fill").foregroundColor(.black)
                    Text("Like").foregroundColor(.black)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "message.badge.filled.fill").foregroundColor(.black)
                    Text("Comment").foregroundColor(.black)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrowshape.turn.up.left.fill").foregroundColor(.black)
                    Text("Share").foregroundColor(.black)
                })
                Spacer()
            }.frame(height: 40).padding(.top, 5)
            HStack{}.frame(maxWidth: .infinity).frame(height: 10 )
                .background(Color.gray.opacity(0.3))
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
