//
//  SplashView.swift
//  Habit
//
//  Created by Artur Mac on 04/06/23.
//

import SwiftUI



struct SplashView: View {
  
  @ObservedObject var viewModel: SplashViewModel

  var body: some View {
    Group {
      switch viewModel.uiState {
        case .loading:
          loadingView()
        case .goToSignInScreen:
          Text("tela de login")
        // navegar para proxima tela
        case .goToHomeScreen:
          Text("Aqui é a HomePage")
        // navegar para proxima tela
        case .error(let msg):
          loadingView(error: msg)
      }
    }.onAppear(perform: viewModel.onAppear)
  }
  
}

extension SplashView {
  func loadingView(error: String? = nil) -> some View {
    ZStack {
      Image("logoHabits")
        .resizable()
        .scaledToFit()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(Color.purple)
        .ignoresSafeArea()
      
      if let error = error {
        Text("")
          .alert(isPresented: .constant(true)) {
            Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("Ok")) {
              // faz algo quando some o alerta
            })
          }
       }
    }
  }
}

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    let viewModel = SplashViewModel()
    SplashView(viewModel: viewModel)
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
