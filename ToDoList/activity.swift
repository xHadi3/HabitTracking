//
//  activity.swift
//  ToDoList
//
//  Created by Hadi Al zayer on 08/08/1446 AH.
//

import Foundation

@Observable
class ActivityList : Codable{
    var activities : [Activity]{
        didSet{
            if let encoded = try? JSONEncoder().encode(activities){
                UserDefaults.standard.set(encoded, forKey:"Activities" )
            }
        }
    }
    
    init() {
        if let savedActivities = UserDefaults.standard.data(forKey: "Activities"){
            if let decodedItems = try? JSONDecoder().decode([Activity].self, from: savedActivities){
                activities = decodedItems
                return
            }
        }
        activities = []
    }
    
    
    func addActivity(activity:Activity){
        activities.append(activity)
    }
    
}

struct Activity : Identifiable, Codable{
    let id : UUID = UUID()
    let name: String
    let description: String
    var counter: Int
    
    mutating func countUp(){
        counter += 1
    }
    
    
}


