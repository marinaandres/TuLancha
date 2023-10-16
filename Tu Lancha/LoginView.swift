//
//  AccountView.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 16/10/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Color.blue
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.35)
                .foregroundColor(.white)
            VStack {
                Text("Iniciar Sesión")
                    .font(.title)
                    .bold()
                    .padding()
                TextField("Correo Electrónico", text: $userName)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                TextField("Contraseña", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                Button ("Iniciar"){
                    //AUTH
                }
                .foregroundColor(.white)
                .font(.title2)
                .bold()
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                
            }
        }
        Spacer()
        HStack {
            Text("¿No tienes cuenta?")
            Button(action: {
                //Register
            }, label: {
               Text("Regístrate")
                    .underline()
            })
        }
        .padding(.bottom)
    }
}

#Preview {
    LoginView()
}
