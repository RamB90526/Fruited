//
//  FruitesModel.swift
//  Fructus
//
//  Created by ran mohan on 28/09/23.
//

import SwiftUI

struct FruitesModel : Identifiable {
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
}
