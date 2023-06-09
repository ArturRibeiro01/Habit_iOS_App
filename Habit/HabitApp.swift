//
//  HabitApp.swift
//  Habit
//
//  Created by Artur Mac on 04/06/23.
//

import SwiftUI

@main
struct HabitApp: App {
    
    init(){
        for family in UIFont.familyNames {
            print(family)
            for font in UIFont.fontNames(forFamilyName: family){
                print ("\(font)")
            }
        }
        
    }
    
    var body: some Scene {
        WindowGroup {
           SplashView(viewModel: SplashViewModel())
        }
    }
}
