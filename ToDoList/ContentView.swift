//
//  ContentView.swift
//  ToDoList
//
//  Created by Hadi Al zayer on 08/08/1446 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    @State private var activityList = ActivityList()
    var body: some View {
        NavigationStack{
        VStack {
            List($activityList.activities){ $activity in
                    NavigationLink(activity.name){
                        descriptionView(activity: $activity)
                }
            }
            Button("add"){
                showingSheet.toggle()
                
            }
        }
       
        .navigationTitle("Track Your Habits")
        .sheet(isPresented: $showingSheet){
            addActivity(activityList: activityList)
        }
        }
    }
}

#Preview {
    ContentView()
}


