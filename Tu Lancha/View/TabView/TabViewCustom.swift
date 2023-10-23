//
//  TabViewCustom.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 16/10/23.
//

import SwiftUI

struct TabViewCustom: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Buscar")
                }
                .padding(.top, 30)
            
            MessageView()
                .tabItem {
                    Image(systemName: "ellipsis.message")
                    Text("Chat")
                }
                .edgesIgnoringSafeArea(.top)
            CalendarView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Reservas")
                }
                .edgesIgnoringSafeArea(.top)
            LoginView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Perfil")
                }
               
        }
}
    
    struct TabView_Previews: PreviewProvider {
        static var previews: some View {
            TabViewCustom()
        }
    }
}
