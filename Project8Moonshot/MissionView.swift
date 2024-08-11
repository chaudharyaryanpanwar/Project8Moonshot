//
//  MissionView.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 13/06/24.
//

import SwiftUI

struct MissionView: View {
    struct CrewMember {
        let role : String
        let astronaut : Astronaut
    }
    let crew : [CrewMember]
    let mission : Mission
    var body: some View {
        ScrollView {
            VStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) {width , axis in
                        width * 0.6
                    }
                    .padding(.top)
                if mission.formattedLaunchDate != "N/A" {
                    Text(mission.formattedLaunchDate)
                }
                
                VStack (alignment: .leading){
                    RectDivider()
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom , 5)
                    Text(mission.description)
                    
                    RectDivider()
                    
                    Text("Crew")
                        .font(.title.bold())
                        .padding(.bottom , 5)
                }
                .padding(.horizontal)
                
                ScrollView(.horizontal , showsIndicators: false){
                    HStack {
                        ForEach(crew , id : \.role){crewMember in
//                            NavigationLink {
//                                AstronautView(astronaut : crewMember.astronaut)
//                            } label : {
//                                CrewView(crewMember: crewMember)
//                                .padding(.horizontal)
//                            }
                            NavigationLink(value: 1 ){
                                CrewView(crewMember: crewMember)
                                .padding(.horizontal)
                            }
                            .navigationDestination(for: Int.self) { integer in
                                if integer == 1 {
                                    AstronautView(astronaut : crewMember.astronaut)
                                }
                            }
                        }
                    }
                }
            }
            .padding(.bottom)
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
    
    init(mission : Mission , astronauts : [String : Astronaut]){
        self.mission = mission
        
        self.crew = mission.crew.map {member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role : member.role , astronaut: astronaut)
            } else {
                fatalError("Missin \(member.name)")
            }
        }
    }
}

#Preview {
    let missions : [Mission] = Bundle.main.decode("missions.json")
    let astronauts : [String : Astronaut] = Bundle.main.decode("astronauts.json")
    
    return MissionView(mission: missions[1], astronauts: astronauts)
        .preferredColorScheme(.dark)
}
