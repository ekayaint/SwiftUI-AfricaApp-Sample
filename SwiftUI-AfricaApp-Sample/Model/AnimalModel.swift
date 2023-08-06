//
//  AnimalModel.swift
//  SwiftUI-AfricaApp-Sample
//
//  Created by ekayaint on 2.08.2023.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
