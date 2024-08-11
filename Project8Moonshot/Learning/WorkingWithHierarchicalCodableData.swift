//
//  WorkingWithHierarchicalCodableData.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 12/06/24.
//

import SwiftUI

struct WorkingWithHierarchicalCodableData: View {
    var body: some View {
        Button("Decode Json"){
            let input = """
            {
                "name" : "Taylor Swift" ,
                "address" : {
                    "street" : "555, Taylor Swift Avenue" ,
                    "city" : "Nashville"
                }
            }
            """
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data){
                print(user.address.street)
            }
        }
        .padding()
        .background(.regularMaterial)
    }
}

struct User : Codable {
    let name : String
    let address : Address
}

struct Address : Codable {
    let street : String
    let city : String
}

#Preview {
    WorkingWithHierarchicalCodableData()
}
