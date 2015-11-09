//
//  Service.swift
//  REST-sample
//
//  Created by James Roland on 11/9/15.
//  Copyright © 2015 James Roland. All rights reserved.
//

import Foundation

protocol Service {
  var serviceName: NSString { get }
  var authorizeURL: NSURL? { get }
  var credentials: NSDictionary { get }
}


class Github: Service {
  let serviceName = NSString(string: "Github")
  let authorizeURL = NSURL(string: "https://github.com/login/oauth/authorize")
  let credentials = NSDictionary(dictionary: [
    "consumerKey": "***",
    "consumerSecret": "***"
    ])
}

class Yelp: Service {
  let serviceName = NSString(string: "Yelp")
  let authorizeURL = NSURL(string: "https://github.com/login/oauth/authorize")
  let credentials = NSDictionary(dictionary: [
    "consumerKey": "***",
    "consumerSecret": "***"
    ])
}