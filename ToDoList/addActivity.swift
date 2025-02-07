//
//  addActivity.swift
//  ToDoList
//
//  Created by Hadi Al zayer on 08/08/1446 AH.
//

import SwiftUI

struct addActivity: View {
    @State var activityList: ActivityList
    
    @State private var name = ""
    @State private var description = ""
    @State private var count = 0
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            
            Form{
                
                TextField("Enter the name", text: $name )
                TextField("Enter the description", text: $description)
                
                
            }
            Button("Submit"){
                activityList.addActivity(activity: Activity(name: name, description: description, counter: 0))
               dismiss()
            }
            .navigationTitle("Add a new Activity")
           
            
        }
    }
}

#Preview {
    addActivity(activityList: ActivityList())
   
}
