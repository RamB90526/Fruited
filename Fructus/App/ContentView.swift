//
//  ContentView.swift
//  Fructus
//
//  Created by ran mohan on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    var fruites : [FruitesModel] = fruitesData
    var body: some View {
        
        NavigationView {
            
            List(fruites.shuffled() ) { fruite in
                NavigationLink(destination: FruiteDetailView(fruite: fruite)) {
                    FruitesRowView(frute: fruite)
                        .padding(.vertical, 4)
                }
                
            }
            
            //Text("Hello, world!")]
            .navigationTitle("Fruits")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruites: fruitesData)
    }
}
