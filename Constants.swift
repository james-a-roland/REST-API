//
//  Constants.swift
//  REST-sample
//
//  Created by James Roland on 11/5/15.
//  Copyright © 2015 James Roland. All rights reserved.
//

import Foundation

let GET = "GET"
let POST = "POST"
let PUT = "PUT"
let PATCH = "PATCH"

//OAuth 1.0
let yelp = "Yelp"
let yelpCredentials =
[
  "consumerKey": "***",
  "consumerSecret": "***"
]

//OAuth 2.0
let github = "Github"
let githubCredentials =
[
  "consumerKey": "***",
  "consumerSecret": "***"
]
let githubAuthorizeURL = "https://github.com/login/oauth/authorize"
let githubAccessTokenURL = "https://github.com/login/oauth/access_token"
let githubResponseType = "code"



