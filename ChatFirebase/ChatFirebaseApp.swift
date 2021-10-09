//
//  ChatFirebaseApp.swift
//  ChatFirebase
//
//  Created by FX on 2021/10/10.
//

import SwiftUI
import Firebase

@main
struct ChatFirebaseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    init() {
        FirebaseApp.configure()
    }
}
