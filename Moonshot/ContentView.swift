//
//  ContentView.swift
//  Moonshot
//
//  Created by Anurag on 13/01/25.
//

import SwiftUI



struct ContentView: View {
    let astronauts : [String : Astronaut] = Bundle.main.decode("astronauts.json")
    let missions : [Mission] = Bundle.main.decode("missions.json")
    
   
   @State private var listView = false;

    
    var body: some View {
        NavigationStack{
            Group{
                
                if listView {
                    ListView(astronauts: astronauts, missions: missions)
                } else {
                    GridView(astronauts: astronauts, missions: missions)
                }
              
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar{
                Button(){
                    listView.toggle()
                } label : {
                    Text(listView ? "Grid" : "List")
                        .padding()
                        .foregroundColor(.white)
                        .background(.lightBackground)
                        .cornerRadius(8)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
