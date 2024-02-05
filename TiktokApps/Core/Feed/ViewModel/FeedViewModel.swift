//
//  FeedViewModel.swift
//  TiktokApps
//
//  Created by User on 06/02/24.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var post = [Post]()
    
    let videoUrls = [
        "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
    ]
    
    init() {
        fetchPost()
    }
    func fetchPost() {
        self.post = [
            .init(id: NSUUID().uuidString, videoURL: videoUrls[0]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[1]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[2]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[3])
        ]
    }
}
