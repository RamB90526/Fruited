//
//  FruiteDetailView.swift
//  Fructus
//
//  Created by ran mohan on 29/09/23.
//

import SwiftUI

struct FruiteDetailView: View {
    var fruite : FruitesModel
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    FruiteHeaderView(fruite: fruite)
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(fruite.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruite.gradientColors[1])
                        
                        Text(fruite.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutriantsView(fruit: fruite)
                        
                        Text("Learn more about \(fruite.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(fruite.gradientColors[1])
                        
                        Text(fruite.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruite.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        
    }
}

struct FruiteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruiteDetailView(fruite: fruitesData[0])
    }
}
