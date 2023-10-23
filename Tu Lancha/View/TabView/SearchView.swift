//
//  SearchView.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 16/10/23.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(){
                    CustomMarinaScrollView()
                    CustomEmbarkationScrollView()
                    CustomAllBoatScrollView()
                }
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Escribe aquí")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
