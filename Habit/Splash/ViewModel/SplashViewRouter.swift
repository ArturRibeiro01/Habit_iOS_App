//
//  SplashViewRouter.swift
//  Habit
//
//  Created by Artur Mac on 08/06/23.
//

import SwiftUI

enum SplashViewRouter {
 
    static func makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
