//
//  VideoModel.swift
//  SwiftUI-AfricaApp-Sample
//
//  Created by ekayaint on 7.08.2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
