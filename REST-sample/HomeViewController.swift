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

  private let services = NSArray(array: [GithubService(), YelpService()])

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
    let service = services.objectAtIndex(indexPath.row) as! Service

    let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
    cell.textLabel?.text = service.serviceName as String
    return cell
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return services.count
  }

}

extension HomeViewController: UITableViewDelegate {

  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let service = services.objectAtIndex(indexPath.row) as! Service
    let dvc = DetailViewController(service: service)
    self.navigationController?.pushViewController(dvc, animated: true)
  }
}
