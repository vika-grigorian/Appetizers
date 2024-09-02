//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Vika on 13.05.24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
//    создали model -> user -> перенесли все переменные (без @Published) в этот файл, здесь удалили
//    @Published var firstName = ""
//    @Published var lastName = ""
//    @Published var email = ""
//    @Published var birthDate = Date()
//    @Published var extraNapkins = false
//    @Published var frequentRefills = false
    
    @AppStorage("user") private var userData: Data? // сохранение данных пользователя 
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
        
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else { // guard проверяет соответствие
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
                
        return true
    }
    
}
