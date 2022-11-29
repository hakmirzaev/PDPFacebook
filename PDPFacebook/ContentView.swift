//
//  ContentView.swift
//  PDPFacebook
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                //live, photo, room
                VStack{
                    HStack{
                        Image("profile").resizable().frame(width: 60, height: 60)
                        Text("What's on your mind?").font(.system(size: 17))
                    }
                    .frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10).padding(.trailing, 10)
                    HStack{}.frame(maxWidth: .infinity).frame(height: 1).background(.gray.opacity(0.3))
                    HStack{
                        Spacer()
                        HStack{
                            Button(action: {}, label: {
                                Image("ic_camera")
                                Text("Live")
                            }).foregroundColor(.black)
                        }
                        Spacer()
                        HStack{
                            Button(action: {}, label: {
                                Image(systemName: "photo.fill")
                                Text("Photo")
                            }).foregroundColor(.black)
                        }
                        Spacer()
                        HStack{
                            Button(action: {}, label: {
                                Image("ic_room")
                                Text("Camera")
                            }).foregroundColor(.black)
                        }
                        Spacer()
                    }
                    
                }
                //create room
                VStack{
                    HStack{}.frame(maxWidth: .infinity).frame(height: 10).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                            }
                        }
                    }
                    .frame(height: 100)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10)
                }
                //create story
                VStack{
                    HStack{}.frame(maxWidth: .infinity).frame(height: 10).background(Color.gray.opacity(0.3))
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                        }
                    }.padding(.leading, 10)
                }
                //post items
                VStack{
                    HStack{}.frame(maxWidth: .infinity).frame(height: 10)
                        .background(Color.gray.opacity(0.3))
                    PostItem(img_url: "photo1")
                    PostItem(img_url: "photo2")
                    PostItem(img_url: "photo3")
                }
            }
            .navigationBarItems(
                leading: Text("facebook").fontWeight(.bold)
                    .font(.system(size: 25)).foregroundColor(.blue),
                trailing: HStack{
                    
                    Button(action: {}, label: {
                        ZStack{
                            Circle().fill(Color.gray).opacity(0.3)
                                .frame(width: 36, height: 36)
                            Image(systemName: "magnifyingglass").foregroundColor(.black)
                        }
                    })
                    Button(action: {}, label: {
                        ZStack{
                            Circle().fill(Color.gray).opacity(0.3)
                                .frame(width: 36, height: 36)
                            Image(systemName: "bolt.circle.fill").foregroundColor(.black)
                        }
                    })
                })
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
