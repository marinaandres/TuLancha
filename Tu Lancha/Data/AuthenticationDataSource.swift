//
//  AuthenticationDataSource.swift
//  Tu Lancha
//
//  Created by Marina Andrés Aragón on 16/10/23.
//

import Foundation
import FirebaseAuth

struct User {
    let email: String
}
final class AuthenticationDataSource {
    func createNewUser(email: String, password: String, completionBlock: @escaping (Result<User,Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { AuthDataResult, error in
            if let error = error {
                print("Error creating a new user \(error.localizedDescription)")
                completionBlock(.failure(error))
                return
            }
            
            let email = AuthDataResult?.user.email ?? "No email"
            print("New user created with info \(email)")
            completionBlock(.success(.init(email: email)))
        }
        
    }
}
