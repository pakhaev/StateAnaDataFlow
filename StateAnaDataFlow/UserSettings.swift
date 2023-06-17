//
//  UserSettings.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

final class UserSettings: ObservableObject {
    @AppStorage("name") private var name = ""
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    
    func update(newName: String, logged: Bool) {
        name = newName
        isLoggedIn = logged
    }
    
    func delete() {
        name = ""
        isLoggedIn = false
    }
    
    func read() -> (name: String, isLoggedIn: Bool) {
        (name, isLoggedIn)
    }
    
}
