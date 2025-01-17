    //
    //  CrewScrollView.swift
    //  Moonshot
    //
    //  Created by Anurag on 14/01/25.
    //

    import SwiftUI

    struct CrewScrollView: View {
        let crew : [CrewMember]
        var body: some View {
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(crew,id: \.role){crewMember in
                        NavigationLink(value:crewMember.astronaut)
                            {
                            HStack{
                                Image(crewMember.astronaut.id)
                                    .resizable()
                                    .frame(width:104,height:72)
                                    .clipShape(.capsule)
                                    .overlay(
                                        Capsule()
                                            .strokeBorder(.white,lineWidth:1)
                                    )
                                VStack(alignment: .leading){
                                    Text(crewMember.astronaut.name)
                                        .foregroundStyle(.white)
                                        .font(.headline)
                                    Text(crewMember.role)
                                        .foregroundStyle(.white.opacity(0.5))
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }

    #Preview {
        let astronauts:[String : Astronaut] = Bundle.main.decode("astronauts.json")
        let crew = [ CrewMember(role:"Command Pilot",astronaut:astronauts["grissom"]!)]
        return CrewScrollView(crew:crew)
            .preferredColorScheme(.dark)
    }
