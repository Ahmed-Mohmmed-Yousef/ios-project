//
//  ViewController.swift
//  FirstApp
//
//  Created by A on 10/22/18.
//  Copyright © 2018 A. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignView: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func logIn(_ sender: CustomBtn) {
        guard let email = emailTF.text else{
            emailTF.backgroundColor = .red
            return
        }
        
        guard let password = passwordTF.text else{
            passwordTF.backgroundColor = .red
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error == nil{
                print("done")
                Helper.updateView(idintifierVC: "HomeVC")
                print("qwtry")
            }else{
                print(error?.localizedDescription as Any)
            }
        }
        
    }
    


}

