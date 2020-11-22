//
//  Task.swift
//  Eisenhower
//
//  Created by Louis Tsai on 11/22/20.
//

import Foundation

struct Task: Decodable, Encodable, Identifiable {
    let id: UUID
    let title: String
}
