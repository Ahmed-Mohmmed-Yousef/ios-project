//
//  Helper.swift
//  FirstApp
//
//  Created by A on 10/24/18.
//  Copyright © 2018 A. All rights reserved.
//

import Foundation
import UIKit
class Helper: NSObject {
    static func updateView(idintifierVC: String){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: idintifierVC)
        UIApplication.shared.delegate?.window??.rootViewController = vc
    
    }
}
