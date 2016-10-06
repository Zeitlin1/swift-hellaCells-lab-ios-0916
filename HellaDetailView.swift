//
//  HellaDetailView.swift
//  HellaCells
//
//  Created by Anthony on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailView: UIViewController {

    @IBOutlet weak var NumberOutlet: UILabel!
    
    var hellaString: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let hellaString = hellaString{
            NumberOutlet?.text = hellaString
            print("hellaDetailview fired!")
        }
        

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
}
