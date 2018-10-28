//
//  GradientView.swift
//  FirstApp
//
//  Created by A on 10/22/18.
//  Copyright © 2018 A. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var firstColor: UIColor = UIColor.clear{
        didSet{
            updateView()
        }
    }
    
    @IBInspectable var secondColor: UIColor = UIColor.clear{
        didSet{
             updateView()
        }
    }
    
    override class var layerClass: AnyClass{
        get{
            return CAGradientLayer.self
        }
    }
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor.cgColor,secondColor.cgColor]
    }
}
