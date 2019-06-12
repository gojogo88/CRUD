//
//  Person.swift
//  CRUD
//
//  Created by Jonathan Go on 2019/06/12.
//  Copyright © 2019 Appdelight. All rights reserved.
//

import Foundation

struct Person: Codable {
  let name: String
  let height: String
  let mass: String
  let hair: String
  let gender: String
  let birthyear: String
  let homeworld: String
  let filmsURLs: [String]
  
  enum CodingKeys: String, CodingKey {
    case name
    case height
    case mass
    case hair = "hair_color"
    case gender
    case birthyear = "birth_year"
    case homeworld
    case filmsURLs = "films"
  }
}
