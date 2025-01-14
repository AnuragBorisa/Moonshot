//
//  GridView.swift
//  Moonshot
//
//  Created by Anurag on 14/01/25.
//

import SwiftUI

struct GridView: View {
    let astronauts: [String : Astronaut]
    let missions: [Mission]
    let columns = [
        GridItem(.adaptive(minimum:150))
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns:columns){
               
                GridListContent(astronauts: astronauts, missions: missions)
            }
            .padding([.horizontal,.bottom])
        }
    }
}

#Preview {
    let missions:[Mission] = Bundle.main.decode("missions.json")
    let astronauts:[String : Astronaut] = Bundle.main.decode("astronauts.json")
    GridView(astronauts:astronauts, missions:missions)
        .preferredColorScheme(.dark)
}
