//
//  HotProspectApp.swift
//  HotProspect
//
//  Created by Ваня Науменко on 11.04.24.
//

import SwiftUI
import SwiftData
@main
struct HotProspectApp: App {
    var body: some Scene {
        WindowGroup {
            BuildingOurTabBar()
                .modelContainer(for: Prospect.self)
//            SchedulingLocalNotifications()
//            ContentView()
        }
    }
}
