//
//  ListOptionView.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 13/06/24.
//

import SwiftUI

struct ListOptionView: View {
    var missions : [Mission]
    var astronauts : [String : Astronaut]
    var body: some View {
        List{
            ForEach(missions) {mission in
                NavigationLink(value: "mission"){
                    VStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width : 100 , height : 100)
                            .padding()
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundStyle(.white.opacity(0.5))
                        }
                        .padding(.vertical)
                        .frame(maxWidth : .infinity)
                        .background(.lightBackground)
                        .clipShape(.rect(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius : 10)
                                .stroke(.lightBackground)
                        )
                    }
                }
                .navigationDestination(for: String.self) { string in
                    if string == "mission" {
                        MissionView(mission: mission, astronauts: astronauts)
                    }
                }
            }
            .background(.darkBackground)
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
        .background(.darkBackground)
    }
}

#Preview {
    let missions : [Mission] = Bundle.main.decode("missions.json")
    let astronauts : [String : Astronaut] = Bundle.main.decode("astronauts.json")
    return ListOptionView(missions: missions, astronauts: astronauts)
}
