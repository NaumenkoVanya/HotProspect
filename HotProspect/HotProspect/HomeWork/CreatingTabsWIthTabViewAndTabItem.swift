//
//  CreatingTabsWIthTabViewAndTabItem.swift
//  HotProspect
//
//  Created by Ваня Науменко on 11.04.24.
//

import SwiftUI

struct CreatingTabsWIthTabViewAndTabItem: View {
    @State private var selectionTab = "Ivan"
    var body: some View {
        TabView(selection: $selectionTab) {
            Button("Show Tab 2") {
                selectionTab = "Vova"
            }
            .tabItem { Label("One", systemImage: "star") }
            .tag("Ivan")

            Button("Show Tab 1"){
                selectionTab = "Ivan"
            }
                .tabItem { Label("Two", systemImage: "circle") }
                .tag("Vova")
        }
    }
}

#Preview {
    CreatingTabsWIthTabViewAndTabItem()
}
