//
//  ScrumsView.swift
//  remember reminder
//
//  Created by Zhizhou Lu on 2021-01-13.
//

import SwiftUI


struct ReminderView: View {
    @Binding var reminders: [String]
    @State private var newReminder:String = ""
    @State private var showExtraTextField = false
    let saveAction: () -> Void
    var body: some View {
            List {
                
                    ForEach(reminders.indices,id:\.self) { index in
                        TextField("",text:$reminders[index],onCommit:{
                            saveAction()
                        })
                    }.onDelete(perform: { indexSet in
                        reminders.remove(atOffsets: indexSet)
                        saveAction()
                    })
                
 
            }.navigationTitle("Reminder")
            .listStyle(InsetListStyle())
        }
           
    
}


