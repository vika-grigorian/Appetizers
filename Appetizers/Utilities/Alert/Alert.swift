//
//  Alert.swift
//  Appetizers
//
//  Created by Vika on 09.05.24.
//


// Sean use this code in all SwiftUI projects


import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    // MARK: - Network Alerts
    
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                              message: Text("The data recieved from the server was invalid. Please contact the support"),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please try later or contact  support"),
                                           dismissButton: .default(Text("Ok")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issie connecting to the server. If this persists, please contact support."),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidComplete  = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                           dismissButton: .default(Text("Ok")))
    
    // MARK: - Account Alerts
    
    static let invalidForm  = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all fields in the form have been flled out."),
                                           dismissButton: .default(Text("Ok")))
    
    static let invalidEmail  = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                           dismissButton: .default(Text("Ok")))
    
    static let userSaveSuccess  = AlertItem(title: Text("Profile saved"),
                                            message: Text("Your profile information was succesfully saved."),
                                           dismissButton: .default(Text("Ok")))
    
    static let invalidUserData  = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error saving or retrieving your profile."),
                                           dismissButton: .default(Text("Ok")))
}
