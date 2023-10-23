//
//  RegisterView.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 16/10/23.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @State private var password = ""
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @Binding var showingRegisterView: Bool

    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(edges: .top)
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.35)
                .foregroundColor(.white)
            VStack(spacing: 60) {
                VStack {
                    Text("Regístrate")
                        .font(.title)
                        .bold()
                        .padding()
                    TextField("Correo Electrónico", text: $userName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .disableAutocorrection(true)
                    SecureField("Contraseña", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    Button ("Registrarme"){
                        authenticationViewModel.createUser(email: userName, password: password)
                    }
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    HStack {
                        Text("¿Ya tienes cuenta?")
                        Button(action: {
                            showingRegisterView.toggle()
                        }, label: {
                            Text("Inicia sesión ahora")
                                .underline()
                                .font(.title3)
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    RegisterView(authenticationViewModel: AuthenticationViewModel(), showingRegisterView: .constant(false))
}
