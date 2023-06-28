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
    @State var navigationHidden = true
    
    @State var action: Int? = 0
    
    var body: some View {
        
        NavigationView{
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .center , spacing: 20){
                    Spacer(minLength: 36)
                    VStack(alignment: .center, spacing: 8){
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
                        
                        Text("Copyright @yyy")
                            .foregroundColor(Color.gray)
                            .font(Font.system(size: 16).bold())
                    }
                    
                }
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
             .padding(.horizontal, 6)
             .background(Color.purple)
             .navigationBarHidden(navigationHidden)
             .navigationBarTitle("Login", displayMode: .inline)
        }.onAppear{
            self.navigationHidden = true
        }.onDisappear{
            self.navigationHidden = false
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
