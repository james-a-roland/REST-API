//
//  DetailViewController.swift
//  REST-sample
//
//  Created by James Roland on 11/9/15.
//  Copyright © 2015 James Roland. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var serviceLabel: UILabel!

  private let service : Service

  init(service: Service) {
    self.service = service
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    serviceLabel.text = service.serviceName as String
    // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

// MARK: Custom actions
extension DetailViewController {

  @IBAction func validateCredentials(sender: AnyObject) {
    service.validateOAuth()
  }
  @IBAction func callAPI1(sender: AnyObject) {
    service.callAPI1()
  }
  @IBAction func callAPI2(sender: AnyObject) {
    service.callAPI2()
  }
  
}
