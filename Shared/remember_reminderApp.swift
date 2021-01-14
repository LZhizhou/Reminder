//
//  remember_reminderApp.swift
//  Shared
//
//  Created by Zhizhou Lu on 2021-01-13.
//

import SwiftUI

@main
struct remember_reminderApp: App {
    @ObservedObject private var data = ReminderData()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ReminderView(reminders:$data.reminders){
                    data.save()
                }
            }.onAppear {
                data.load()
            }
        }
    }
}
