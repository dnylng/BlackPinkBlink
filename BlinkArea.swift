//
//  BlinkArea.swift
//  BlackPinkBlink
//
//  Created by Danny Luong on 6/28/17.
//  Copyright © 2017 dnylng. All rights reserved.
//

import Foundation

class BlinkArea {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    // Initialize all the private vars
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
