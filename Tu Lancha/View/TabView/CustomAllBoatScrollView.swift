//
//  CustomAllBoatScrollView.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 16/10/23.
//

import SwiftUI

let harbours: [String: String] = [
    "Punta  Cana":"marinaCapCana","Samaná":"marinaPuertoBahía",
    "Casa de Campo": "marina_casacampo"
]

struct CustomAllBoatScrollView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 15) {
            Text("Todos nuestros botes")
                .font(.title)
                .fontWeight(.medium)
                .padding(.leading, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(harbours.sorted(by: <), id: \.key) { (nombrePais, nombreImagen) in
                        VStack (alignment:.leading ,spacing: 20) {
                            Image(nombreImagen)
                                .resizable()
                                .frame(width: 160, height: 100)
                                .cornerRadius(10)
                            Text(nombrePais)
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    .padding(.leading, 20)
                    
                }
                Spacer()
            }
            
        }
    }
}
struct CustomAllBoatScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAllBoatScrollView()
    }
}
