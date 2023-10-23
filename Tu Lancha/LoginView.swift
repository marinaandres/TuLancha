//
//  AccountView.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 16/10/23.
//

import SwiftUI

enum AuthenticationSheetView: String, Identifiable {
    case register
    case login
    
    var id: String {
        return rawValue
    }
}

struct LoginView: View {
    @State var showingRegisterView = false
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            BackgroundDesign()
            VStack(spacing: 60) {
                VStack {
                    Text("Inicia Sesión")
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
                    Button ("Registrarme"){
                        //AUTH
                    }
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    HStack {
                        Text("¿Aún no tienes cuenta?")
                        Button(action: {
                            showingRegisterView.toggle()
                        }, label: {
                            Text("Regístrate")
                                .underline()
                                .font(.title3)
                        })
                    }
                    .sheet(isPresented: $showingRegisterView, content: {
                        RegisterView(showingRegisterView:  $showingRegisterView)
                    })
                    
                }
            }
        }
    }
}

#Preview {
    LoginView()
}

struct BackgroundDesign: View {
    var body: some View {
        Color.blue.ignoresSafeArea(edges: .top)
        Circle()
            .scale(1.7)
            .foregroundColor(.white.opacity(0.15))
        Circle()
            .scale(1.35)
            .foregroundColor(.white)
    }
}
