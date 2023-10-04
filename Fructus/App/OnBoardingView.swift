//
//  OnBoardingView.swift
//  Fructus
//
//  Created by ran mohan on 28/09/23.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruites: [FruitesModel] = fruitesData
    
    var body: some View {
        TabView {
            
            ForEach(fruitesData) { data in
                FruiteCardView(fruite: data)
            }
            
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruites: fruitesData)
    }
}
