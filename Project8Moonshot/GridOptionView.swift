//
//  GridOptionView.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 13/06/24.
//

import SwiftUI

struct GridOptionView: View {
    var columns : [GridItem]
    var missions : [Mission]
    var astronauts : [String : Astronaut]
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(missions) {mission in
//                NavigationLink {
//                    MissionView(mission: mission, astronauts: astronauts)
//                } label : {
//                    VStack {
//                        Image(mission.image)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width : 100 , height : 100)
//                            .padding()
//                        VStack {
//                            Text(mission.displayName)
//                                .font(.headline)
//                                .foregroundStyle(.white)
//                            Text(mission.formattedLaunchDate)
//                                .font(.caption)
//                                .foregroundStyle(.white.opacity(0.5))
//                        }
//                        .padding(.vertical)
//                        .frame(maxWidth : .infinity)
//                        .background(.lightBackground)
//                        .clipShape(.rect(cornerRadius: 10))
//                        .overlay(
//                            RoundedRectangle(cornerRadius : 10)
//                                .stroke(.lightBackground)
//                        )
//                    }
//                }
                
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
        }
    }
}
//
//#Preview {
//    GridOptionView()
//}
