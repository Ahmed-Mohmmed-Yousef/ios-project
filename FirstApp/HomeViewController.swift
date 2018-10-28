//
//  HomeViewController.swift
//  FirstApp
//
//  Created by A on 10/23/18.
//  Copyright © 2018 A. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signOut(_ sender: CustomBtn) {
        try? Auth.auth().signOut()
        Helper.updateView(idintifierVC: "SignInVC")
        
    }
    
    

}
