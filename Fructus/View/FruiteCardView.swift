//
//  FruiteCardView.swift
//  Fructus
//
//  Created by ran mohan on 28/09/23.
//

import SwiftUI

struct FruiteCardView: View {
    
    @State var isAnimating : Bool = false
    var fruite : FruitesModel
    
    var body: some View {
        
        ZStack {
            VStack {
                Image(fruite.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8,x: 8, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text(fruite.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 20, x: 2, y: 2)
                
                Text(fruite.headline)
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 480)
                
                StartButtonView()
                
            } // VSTACK
        } //Zsatck
        
        .onAppear{
            isAnimating = false
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        }
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: fruite.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
        
    }
}

struct FruiteCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruiteCardView(fruite: fruitesData[4])
    }
}
