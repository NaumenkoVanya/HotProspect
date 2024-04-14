//
//  SchedulingLocalNotifications.swift
//  HotProspect
//
//  Created by Ваня Науменко on 11.04.24.
//

import SwiftUI
import UserNotifications

struct SchedulingLocalNotifications: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { succer, error in
                    if succer {
                        print("All set")
                    } else if let error {
                        print(error.localizedDescription)
                    }
                }
            }
            Button("Shedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Feed the cat"
                content.subtitle = "It looks hungry"
                content.sound = UNNotificationSound.default
                // показывает уведомление через пять секунд
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                // выбираеи случайный индификатор
                let requst = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                // добавляет запрос на уведомление
                UNUserNotificationCenter.current().add(requst)
                
            }
        }
    }
}

#Preview {
    SchedulingLocalNotifications()
}
