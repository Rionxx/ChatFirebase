//
//  iDData.swift
//  ChatFirebase
//
//  Created by FX on 2021/10/10.
//

import SwiftUI

struct iDData: Identifiable {
    var id: String
    var name: String
    var msg: String
    @State var image: Data
}
