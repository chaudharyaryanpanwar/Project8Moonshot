//
//  ContentView.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    let astronauts : [String : Astronaut] = Bundle.main.decode("astronauts.json")
    let missions : [Mission] = Bundle.main.decode("missions.json")
    @State private var viewType = "Grid"
    @State var path = NavigationPath()
    let columns = [
        GridItem(.adaptive(minimum: 150 ))
    ]
    var body: some View {
        NavigationStack (path : $path){
            Picker("Select Grid or List View", selection: $viewType){
                ForEach(["Grid" , "List"] , id : \.self){
                    Text($0)
                }
            }
            .padding()
            .pickerStyle(.segmented)
            Group {
                if viewType == "List" {
                    ListOptionView(missions: missions, astronauts: astronauts)
                        .padding([.horizontal , .bottom])
                        
                }
                else {
                    ScrollView {
                        GridOptionView( columns: columns, missions: missions, astronauts: astronauts )
                            .padding([.horizontal , .bottom])
                    }
                    
                }
            }
            
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .foregroundStyle(.white)
            .preferredColorScheme(.dark)
                
            
            
        }
    }
}

#Preview {
    ContentView()
}
