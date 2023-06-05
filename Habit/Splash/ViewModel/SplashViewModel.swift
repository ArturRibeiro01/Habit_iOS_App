//
//  SplashViewModel.swift
//  Habit
//
//  Created by Artur Mac on 05/06/23.
//

import SwiftUI

class SplashViewModel: ObservableObject{
    @Published var uiState: SplashUIState = .loading
    
    func onAppear(){
        //faz algo assincrono e muda o estado do uiState
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            //aqui é chamado depois de 2 segundos
            self.uiState = .goToSignInScreen
        }
    }
}

