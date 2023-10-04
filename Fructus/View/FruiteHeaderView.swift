//
//  FruiteHeaderView.swift
//  Fructus
//
//  Created by ran mohan on 29/09/23.
//

import SwiftUI

struct FruiteHeaderView: View {
    var fruite : FruitesModel
    @State private var isAnimatingImage : Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruite.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruite.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.12), radius: 8, x: 6, y: 6)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear(){
            withAnimation (.easeOut(duration: 0.6)){
                isAnimatingImage = true
            }
        }
    }
}

struct FruiteHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruiteHeaderView(fruite: fruitesData[0])
            .previewLayout(.fixed(width: 375, height: 470))
    }
}
