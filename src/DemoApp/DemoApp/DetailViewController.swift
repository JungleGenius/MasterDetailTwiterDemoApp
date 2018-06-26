//
//  DetailViewController.swift
//  DemoApp
//
//  Created by Mac Mini Admin on 06/24/2018.
//  Copyright © 2018 Media Spurt, Inc. All rights reserved.
//
//  Modifications by Daniel Thompson Copyright © 2018

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            
            //print(detail.valueForKey("titleUrl")!.description)
            
            if let webView = self.webView {
                webView.loadRequest(NSURLRequest(URL: NSURL(string: detail.valueForKey("titleUrl")!.description)!))
                webView.request
                webView.reload()
            }

        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

