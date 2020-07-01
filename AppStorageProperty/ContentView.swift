//
//  ContentView.swift
//  AppStorageProperty
//
//  Created by ramil on 01.07.2020.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    
    var body: some View {
        VStack {
            Text(isLoggedIn ? "Hello User" : "Please Login")
                .font(.title)
            
            Button(isLoggedIn ? "Logout" : "Login") {
                isLoggedIn.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
