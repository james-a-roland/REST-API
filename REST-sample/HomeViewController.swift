//
//  HomeViewController.swift
//  REST-sample
//
//  Created by James Roland on 11/5/15.
//  Copyright © 2015 James Roland. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  private let services = NSArray(array: ["Yelp", "Github"])

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
    let str = services.objectAtIndex(indexPath.row)
    print(str)
    print(cell)
    cell.textLabel?.text = services.objectAtIndex(indexPath.row) as! String
    return cell
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return services.count
  }

}

extension HomeViewController: UITableViewDelegate {

  func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
    print(tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text)
  }
}
