//
//  HomeViewController.swift
//  REST-sample
//
//  Created by James Roland on 11/5/15.
//  Copyright © 2015 James Roland. All rights reserved.
//

import UIKit
import OAuthSwift

class HomeViewController: UIViewController {

  private let services = NSArray(array: [yelp, github])

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

extension HomeViewController: UITableViewDataSource {

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    //let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
    let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
    cell.textLabel?.text = services.objectAtIndex(indexPath.row) as! String
    return cell
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return services.count
  }

}

extension HomeViewController: UITableViewDelegate {

  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    print(indexPath.row)
    let text : String = services.objectAtIndex(indexPath.row) as! String
    switch text {
    case yelp:
      authenticateYelp()
    case github:
      authenticateGithub()
    default:
      print("Default (Check ViewController tableView)")
    }
  }

  private func authenticateYelp() {

  }

  private func authenticateGithub() {
    
  }

}
