//
//  JSONDecoder+Extension.swift
//  CRUD
//
//  Created by Jonathan Go on 2019/06/12.
//  Copyright © 2019 Appdelight. All rights reserved.
//

import Foundation

extension JSONDecoder {
  func decode<T: Decodable>(_ type: T.Type, fromURL url: String, completion: @escaping (T) -> Void) {
    guard let url = URL(string: url) else {
      fatalError("Invalid URL passed.")
    }
    
    DispatchQueue.global().async {
      do {
        let data = try Data(contentsOf: url)
        let downloadedData = try self.decode(type, from:
          data)
        
        DispatchQueue.main.async {
          completion(downloadedData)
        }
      } catch {
        print("failed to decode JSON: " + error.localizedDescription)
      }
    }
  }
}
