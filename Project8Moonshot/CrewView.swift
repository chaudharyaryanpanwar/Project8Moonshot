//
//  CrewView.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 13/06/24.
//

import SwiftUI

struct CrewView: View {
    let crewMember : MissionView.CrewMember
    var body: some View {
        HStack {
            Image(crewMember.astronaut.id)
                .resizable()
                .frame(width : 104 , height : 72)
                .clipShape(.capsule)
                .overlay(
                    Capsule()
                        .strokeBorder(.white , lineWidth: 1)
                )
            
            VStack(alignment : .leading){
                Text(crewMember.astronaut.name)
                    .foregroundStyle(.white)
                    .font(.headline)
                Text(crewMember.role)
                    .foregroundStyle(.white.opacity(0.5))
            }
        }
    }
}

//#Preview {
//    CrewView()
//}
