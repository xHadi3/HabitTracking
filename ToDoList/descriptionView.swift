//
//  descriptionView.swift
//  ToDoList
//
//  Created by Hadi Al zayer on 08/08/1446 AH.
//

import SwiftUI

struct descriptionView: View {
    @Binding  var activity: Activity
    var body: some View {
        NavigationStack{
            
            Text(activity.description)
            HStack{
                Text("The counter is: \(activity.counter)")
                
                Button(action: {
                    activity.countUp()
                               }) {
                                   Image(systemName: "plus.circle.fill") // Icon for the button
                                       .resizable()
                                       .frame(width: 40, height: 40)
                                       .foregroundColor(.white)
                                       .background(Circle().fill(Color.blue))
                                      
                               }
                               
                               .padding()
            }
           
            
           
                           
            
        }.navigationTitle(activity.name)
        
    }
}

#Preview {
    descriptionView(activity: .constant(Activity(name: "Exercise", description: "Daily exercise", counter: 5)))
}
