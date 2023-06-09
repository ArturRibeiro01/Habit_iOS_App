//
//  SignInView.swift
//  Habit
//
//  Created by Artur Mac on 08/06/23.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    @State var email = ""
    @State var password = ""
    
    @State var action: Int? = 0
    
    var body: some View {
        VStack(alignment: .center){
            Image("logoHabits")
              .resizable()
              .scaledToFit()
              .padding(30)
            
            Text("Login")
                .foregroundColor(Color.primary)
                .font(Font.system(.title).bold())
                .padding(.bottom, 8)
            
            numberField
            
            passwordField
            
            enterButton
            
            registerLink
        }
    }
}

extension SignInView {
    var numberField : some View{
        TextField("", text: $email)
            .border(Color("backgroundColor")).padding()
    }
}

extension SignInView {
    var passwordField : some View{
        SecureField("", text: $password)
            .border(Color("backgroundColor")).padding()
    }
}

extension SignInView {
    var enterButton : some View{
        
        Button("Entrar"){
            
        }
    }
}

extension SignInView {
    var registerLink : some View {
        VStack {
            Text("não tem login ativo ?").padding(.top, 48)
    
        
            ZStack {
                NavigationLink(
                    destination: Text("Tela de Cadastro"),
                    tag: 1,
                    selection: $action,
                    label: {EmptyView()}
                )
                
                Button("Faça seu Cadastro"){
                    self.action = 1
                }
            }
        }
    }
}




struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SignInViewModel()
        SignInView(viewModel: viewModel)
    }
}
