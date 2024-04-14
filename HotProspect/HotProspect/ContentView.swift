//
//  ContentView.swift
//  HotProspect
//
//  Created by Ваня Науменко on 11.04.24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = Set<String>()
    let users = ["Tohru", "Yuki", "Kyo", "Momiji"]
    var body: some View {
        List(users, id: \.self, selection: $selection) { user in
            Text(user)
        }
        if selection.isEmpty == false {
            Text("You secection \(selection.formatted())")
        }
        
    }
}

#Preview {
    ContentView()
}
