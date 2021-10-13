//
//  MessagePageView.swift
//  ChatFirebase
//
//  Created by FX on 2021/10/13.
//

import SwiftUI

struct MessagePageView: View {
    @ObservedObject var message = DataFire()
    var name = ""
    
    @Binding var image: Data
    @State var write = ""
    
    var body: some View {
        VStack {
            List(message.chat) { i in
                if i.name == self.name {
                    //Add ListMessage
                } else {
                    //Add ListMessage
                }
            }.navigationBarTitle("Chats", displayMode: .inline)
            
            HStack {
                TextField("message..", text: self.$write)
                    .padding(10)
                    .background(Color(red: 233.0 / 255, green: 234.0 / 255, blue: 243.0 / 255))
                    .cornerRadius(25)
                
                Button(action : {
                    if self.write.count > 0 {
                        self.message.addInfo(msg: self.write, user: self.name, image: self.image)
                    }
                }) {
                    Image(systemName: "paperplane.fill")
                        .font(.system(size: 20))
                        .foregroundColor((self.write.count > 0) ? Color.blue : Color.gray)
                        .rotationEffect(.degrees(50))
                }
            }
        }
    }
}

/*
struct MessagePageView_Previews: PreviewProvider {
    static var previews: some View {
        MessagePageView(message: <#T##arg#>, name: <#T##arg#>, image: <#T##Data#>, write: <#T##arg#>, body: <#T##View#>)
    }
}
*/
