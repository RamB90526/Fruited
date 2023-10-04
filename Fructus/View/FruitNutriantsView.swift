//
//  FruitNutriantsView.swift
//  Fructus
//
//  Created by ran mohan on 29/09/23.
//

import SwiftUI

struct FruitNutriantsView: View {
    var fruit : FruitesModel
    let nutrients : [String] = ["Energy", "Sugar","Fat","Protien","Vitamins", "Minaral"]
    var body: some View {
        
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id:\.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group{
                            Image(systemName: "info.circle")
                            Text("\(nutrients[item])")
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .fontWeight(.bold)
                        
                        Spacer(minLength: 25)
                        Text("\(fruit.nutrition[item])")
                            .multilineTextAlignment(.trailing)
                    }
                    //.padding(.top,10)
                }
            }
            
        }
        
        
    }
}

struct FruitNutriantsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutriantsView(fruit: fruitesData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
