//
//  BuildingOurTabBar.swift
//  HotProspect
//
//  Created by Ваня Науменко on 13.04.24.
//

import SwiftUI

struct BuildingOurTabBar: View {
    var body: some View {
        TabView {
            ProspectsView(filter: .none)
                .tabItem { Label("Everyone", systemImage: "person.3") }
            ProspectsView(filter: .contacted)
                .tabItem { Label("Contacted", systemImage: "checkmark.circle") }
            ProspectsView(filter: .uncontacted)
                .tabItem { Label("Uncontacted", systemImage: "questionmark.diamond") }
            MeVie()
                .tabItem { Label("Me.", systemImage: "person.crop.square") }
        }
    }
}

#Preview {
    BuildingOurTabBar()
}
