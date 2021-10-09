//
//  ContentView.swift
//  ChatFirebase
//
//  Created by FX on 2021/10/10.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var show = false
    @State var image: Data = .init(count: 0)
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    if self.image.count != 0 {
                        Image(uiImage: UIImage(data: self.image)!)
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                            .overlay(Circle()
                                        .stroke(Color.gray, lineWidth: 1))
                    } else {
                        Button(action: {
                            self.show.toggle()
                        }) {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .overlay(Circle()
                                            .stroke(Color.gray, lineWidth: 1))
                        }
                    }
                    
                    TextField("Username..", text: self.$name).padding(10)
                        .background(Color(red: 233.0 / 255, green: 234.0 / 255, blue: 243.0 / 255))
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
