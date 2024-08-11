//
//  NavigationLink.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 12/06/24.
//

import SwiftUI

struct NavigationLinkView: View {
    var body: some View {
        NavigationStack {
            
            NavigationLink("Tap Me"){
                Text("Detail View")
            }
            .padding(20)
            .background(.yellow)
            .clipShape(Circle())
            NavigationLink {
                NavigationView2()
            } label : {
                VStack {
                    Text("This is the label")
                    Text("So is this")
                    Image(systemName : "face.smiling")
                }
                .font(.largeTitle)
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct NavigationView2 : View {
    var body : some View {
        NavigationStack {
            List(0..<100){row in
                NavigationLink("Row \(row)"){
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    NavigationLinkView()
}
