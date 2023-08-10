//
//  CodableBundelExtension.swift
//  TOUCHDOWN
//
//  Created by codinglife365 on 10/8/2566 BE.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundel.")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundel.")
        }
        // 3. Create a dedoder
        let decoder = JSONDecoder()
        // 4. Create a property for the decoded data
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundel.")
        }
        // 5. Return the ready-to-use data
        return decodeData
    }
}
