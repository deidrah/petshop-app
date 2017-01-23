//
//  ContactViewController.swift
//  app
//
//  Created by Dominika on 18.01.2017.
//  Copyright © 2017 Dominika. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews () {
        super.viewWillLayoutSubviews ()
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }
    
}
