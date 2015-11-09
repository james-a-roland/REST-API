//
//  Service.swift
//  REST-sample
//
//  Created by James Roland on 11/9/15.
//  Copyright © 2015 James Roland. All rights reserved.
//

import Foundation
import OAuthSwift

let stateLength = 20

protocol Service {
  var serviceName: NSString { get }
  var authorizeURL: NSURL? { get }
  var credentials: NSDictionary { get }

  func validateOAuth()
  func callAPI1()
  func callAPI2()
}


class GithubService: Service {
  let serviceName = NSString(string: "Github")
  let authorizeURL = NSURL(string: "https://github.com/login/oauth/authorize")
  let credentials = NSDictionary(dictionary: [
    "consumerKey": "***",
    "consumerSecret": "***"
    ])

  func validateOAuth() {
    print("Validate Oauth")
  }

  func callAPI1() {
    let state = generateStateWithLength(stateLength)
    print("API1")
  }

  func callAPI2() {
    let state = generateStateWithLength(stateLength)
    print("API2")
  }

}

class YelpService: Service {
  let serviceName = NSString(string: "Yelp")
  let authorizeURL = NSURL(string: "https://github.com/login/oauth/authorize")
  let credentials = NSDictionary(dictionary: [
    "consumerKey": "***",
    "consumerSecret": "***"
    ])

  func validateOAuth() {
    return
  }

  func callAPI1() {
    let state = generateStateWithLength(stateLength)
    print("API1")
  }

  func callAPI2() {
    let state = generateStateWithLength(stateLength)
    print("API2")
  }
}