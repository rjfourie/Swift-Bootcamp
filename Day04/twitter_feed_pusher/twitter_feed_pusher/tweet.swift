//
//  tweet.swift
//  twitter_feed_pusher
//
//  Created by Russell Fourie on 2019/10/12.
//  Copyright © 2019 Russell Fourie. All rights reserved.
//

import Foundation

struct  Tweet : CustomStringConvertible {
    
    let name : String
    let text : String
    
    var description: String {
        return "(\(name), \(text))"
    }
}
