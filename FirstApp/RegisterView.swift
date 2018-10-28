//
//  RegisterView.swift
//  FirstApp
//
//  Created by A on 10/23/18.
//  Copyright © 2018 A. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterView: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var re_passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func okBtn(_ sender: CustomBtn) {
        guard nameTF.text != "" else{
            nameTF.backgroundColor = UIColor.red
            return
        }
        guard emailTF.text != "" else{
            emailTF.backgroundColor = UIColor.red
            return
        }
        guard (passwordTF.text != "" && re_passwordTF.text == passwordTF.text) else{
            passwordTF.backgroundColor = UIColor.red
            re_passwordTF.backgroundColor = UIColor.red
            return
        }
        
        Auth.auth().createUser(withEmail: emailTF.text!, password: passwordTF.text!) { (authResult, error) in
            // ...
            if error == nil{
                print("Done*****")
                
                print(authResult?.user.email! ?? "user name")
                Helper.updateView(idintifierVC: "HomeVC")
            }else{
                print(error?.localizedDescription as Any)
            }
            
        }
        
    }
    
}
