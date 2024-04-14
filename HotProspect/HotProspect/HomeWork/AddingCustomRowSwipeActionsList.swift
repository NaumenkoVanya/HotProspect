//
//  AddingCustomRowSwipeActionsList.swift
//  HotProspect
//
//  Created by Ваня Науменко on 11.04.24.
//

import SwiftUI

struct AddingCustomRowSwipeActionsList: View {
    var body: some View {
        List {
            Text("Taylor Swift")
                .swipeActions{
                    Button("Send message", systemImage: "message") {
                        print("Ivan")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button("Pin", systemImage: "pin") {
                        print("pinning")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    AddingCustomRowSwipeActionsList()
}
