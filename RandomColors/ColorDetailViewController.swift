//
//  ColorDetailViewController.swift
//  RandomColors
//
//  Created by Gustavo Nunes Pereira on 17/01/23.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var color: UIColor?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .systemBackground;
    }
    
    

}
