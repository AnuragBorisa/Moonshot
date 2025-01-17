//
//  Astronaut.swift
//  Moonshot
//
//  Created by Anurag on 13/01/25.
//

import Foundation

struct Astronaut : Codable, Identifiable,Hashable {
    let id : String
    let name : String
    let description : String
}
