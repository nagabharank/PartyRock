//
//  PartyRock.swift
//  PartyRockerApp
//
//  Created by NagaBharan Kothrui on 1/4/18.
//  Copyright © 2018 Bharan Kothrui. All rights reserved.
//

import Foundation

class PartyRock {
    // Create private variables which helps in securing the data from external use.
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    //Create the getters for the variables
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    // Initilizing the variable
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
