//
//  SplashView.swift
//  Habit
//
//  Created by Artur Mac on 04/06/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .goToSignInScreen
    
    var body: some View {
        switch state {
        case .loading:
            loadingView()
           
        case .goToSignInScreen:
            Text("Tela de Login")
        case .goToHomeScreen:
            Text("Tela Principal")
        case .error(let msg):
            Text("Erro: \(msg)")
            loadingView(error: msg)
        }
    }
}

extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
                 Image("logoHabits")
                     .resizable()
                     .scaledToFit()
                     .frame(maxWidth: .infinity, maxHeight: .infinity)
                     
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(
                            title: Text("Habit"),
                            message: Text(error),
                            dismissButton: .default(Text("Fechar")){
                                //  Fazer algo quando o alerta sumir
                            })
                    }
            }
            
        }.background(Color.purple).ignoresSafeArea()
    }
}




struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .error("teste de erro no servidor"))
    }
}









//Use dessa forma quando for usar o mesmo bloco em outros locais do código
//Nesse caso no devera ser usado chamando a struct assim: LoadingView()
//struct LoadingView : View {
//    var body: some View {
//        ZStack {
//            Image("logoHabits")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//        }.background(Color.red).ignoresSafeArea()
//    }
//}
