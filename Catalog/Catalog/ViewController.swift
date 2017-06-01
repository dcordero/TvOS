//
//  ViewController.swift
//  Catalog
//
//  Created by David Cordero on 01.06.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import TvOS_SwiftTemplates

class ViewController: UIViewController {
    
    @IBAction func loadingButtonWasPressed(_ sender: Any) {
        
        let viewController = LoadingViewController(withTitle: "Loading...")
        present(viewController, animated: true, completion: nil)
    }
}
