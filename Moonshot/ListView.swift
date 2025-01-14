import SwiftUI

struct ListView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                GridListContent(astronauts: astronauts, missions: missions)
            }
        }
        .background(.darkBackground)
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    return ListView(astronauts: astronauts, missions: missions)
        .preferredColorScheme(.dark)
}
