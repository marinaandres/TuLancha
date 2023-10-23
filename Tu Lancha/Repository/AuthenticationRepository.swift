//
//  AuthenticationRepository.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 23/10/23.
//

import Foundation

final class AuthenticationRepository {
    
    private let authenticationDataSource: AuthenticationDataSource
    
    init(authenticationDataSource: AuthenticationDataSource = AuthenticationDataSource()) {
        self.authenticationDataSource = authenticationDataSource
    }
    func createNewUser(email: String, password: String, completionBlock: @escaping (Result<User,Error>) -> Void){
        authenticationDataSource.createNewUser(email: email, password: password, completionBlock: completionBlock)
    }
}

