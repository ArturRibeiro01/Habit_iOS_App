//
//  HabitApp.swift
//  Habit
//
//  Created by Artur Mac on 04/06/23.
//

import SwiftUI

@main
struct HabitApp: App {
    var body: some Scene {
        WindowGroup {
           SplashView(viewModel: SplashViewModel())
        }
    }
}
