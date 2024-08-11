//
//  Mission.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 12/06/24.
//

import Foundation


struct Mission : Codable , Identifiable {
    
    var displayName : String {
        "Apollo \(id)"
    }
    
    var image : String{
        "apollo\(id)"
    }
    
    struct CrewRole : Codable {
        let name : String
        let role : String
    }
    
    let id : Int
    let launchDate : Date?
    let crew : [Mission.CrewRole]
    let description : String
    
    var formattedLaunchDate  : String {
        launchDate?.formatted(date : .abbreviated , time : .omitted ) ?? "N/A"
    }
    
    
}
