//
//  ViewController.swift
//  zingmp3
//
//  Created by Kien Nguyen Duc on 5/22/17.
//  Copyright © 2017 Kien Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imv_zing: UIImageView!
    
    @IBOutlet weak var lbl_zing: UILabel!
    
    @IBOutlet weak var lbl_name: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            imv_zing!.alpha = 0
            lbl_zing!.alpha = 0
        lbl_name!.alpha = 0
        
        
        }
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            UIView.animate(withDuration: 3, animations: {
                self.imv_zing!.alpha = 1
                
            }){_ in
                UIView.animate(withDuration: 2, animations: {
                    self.lbl_zing!.center = CGPoint(x: self.imv_zing!.center.x, y: 100)
                    self.lbl_zing!.alpha = 1
                    
                }) {_ in
                    UIView.animate(withDuration: 2, animations: {
                        self.lbl_name!.center = CGPoint(x: self.lbl_name!.center.x, y: 600)
                        self.lbl_name!.alpha = 1}

                    )}
            }
    }
    
    
    
    
}

