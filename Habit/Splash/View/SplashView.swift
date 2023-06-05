//
//  SplashView.swift
//  Habit
//
//  Created by Artur Mac on 04/06/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .loading
    
    var body: some View {
        switch state {
        case .loading:
            Text("Loading")
        case .goToSignInScreen:
            Text("Tela de Login")
        case .goToHomeScreen:
            Text("Tela Principal")
        case .error(let msg):
            Text("Erro: \(msg)")
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
