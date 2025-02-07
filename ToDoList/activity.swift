//
//  activity.swift
//  ToDoList
//
//  Created by Hadi Al zayer on 08/08/1446 AH.
//

import Foundation

@Observable
class ActivityList {
    var activities : [Activity] = []
    
    func addActivity(activity:Activity){
        activities.append(activity)
    }
    
}

struct Activity : Identifiable{
    let id : UUID = UUID()
    let name: String
    let description: String
    var counter: Int
    
    mutating func countUp(){
        counter += 1
    }
    
    
}


