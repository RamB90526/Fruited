//
//  FructusApp.swift
//  Fructus
//
//  Created by ran mohan on 28/09/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {

        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }
            else{
                ContentView()
            }
            
        }
        
    }
}
