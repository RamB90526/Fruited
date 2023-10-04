//
//  FruitesRowView.swift
//  Fructus
//
//  Created by ran mohan on 29/09/23.
//

import SwiftUI

struct FruitesRowView: View {
    
    var frute : FruitesModel
    
    var body: some View {
        HStack {
            Image(frute.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3),radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: frute.gradientColors, startPoint: .top, endPoint: .bottom)
                )
            VStack(alignment: .leading,spacing: 5){
                Text(frute.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(frute.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
        }
    }
}

struct FruitesRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitesRowView(frute: fruitesData[0])
            .previewLayout(.sizeThatFits)
    }
}
