//
//  MessageView.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 16/10/23.
//

import SwiftUI

struct MessageView: View {

@State var chatText = ""
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(height: 40)
                    .foregroundColor(.white)
                Text("Chat")
                    .font(.title)
            }
            .padding(.top, 60)
            ScrollView {
                ForEach(0..<10) { num in
                    HStack {
                        Spacer()
                        Text("This a provisional text")
                            .foregroundColor(.white)
                            .padding()
                            .background(.blue)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                }
                .background(Color(.init(white: 0.95, alpha: 1)))
            }
            HStack {
                TextField("Escribe aquí tu mensaje", text: $chatText)
                    .font(.title3)
                Button {
                    ""
                } label: {
                    Image(systemName: "paperplane.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.blue)
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
