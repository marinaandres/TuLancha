//
//  AuthenticationViewModel.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 23/10/23.
//

import Foundation

final class AuthenticationViewModel: ObservableObject {
    @Published var user: User?
    @Published var messageError: String?
    private let authenticationRepository: AuthenticationRepository
    
    init(authenticationRepository: AuthenticationRepository = AuthenticationRepository()){
        self.authenticationRepository = authenticationRepository
    }
    
    func createUser(email: String, password: String){
        authenticationRepository.createNewUser(email: email, password: password) { result in
            switch result {
                
            case .success(let user):
                self.user = user
            case .failure(let error):
                self.messageError = error.localizedDescription
            }
        }
    }
}
