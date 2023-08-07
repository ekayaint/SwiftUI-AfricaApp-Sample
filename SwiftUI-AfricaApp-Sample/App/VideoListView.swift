//
//  VideoListView.swift
//  SwiftUI-AfricaApp-Sample
//
//  Created by ekayaint on 18.07.2023.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = Bundle.main.decode("videos.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    Text("Videos")
                }
            }
        } //: Navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
