//
//  ViewCard.swift
//  Cardgree
//
//  Created by Thiago Centurion on 08/04/2018.
//  Copyright © 2018 Thiago Centurion. All rights reserved.
//

import UIKit

class ViewCard: UIViewController {
    
    var index = 0 // Index para o page view controller
    
    @IBOutlet weak var viewCard: UIView!
    @IBOutlet weak var blurCard: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        viewCard.layer.shadowColor = UIColor.black.cgColor
        viewCard.layer.shadowOpacity = 0.2
        viewCard.layer.shadowRadius = 7.0
        viewCard.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewCard.layer.masksToBounds = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
