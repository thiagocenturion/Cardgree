//
//  ViewController.swift
//  Cardegee
//
//  Created by Thiago Centurion on 07/04/2018.
//  Copyright © 2018 Thiago Centurion. All rights reserved.
//

import UIKit

class ViewDashboard: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Configura a navigation para transparente
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        // Faz a altura da row ser dinamica
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UITableView DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellExtrato", for: indexPath)
        
        cell.selectionStyle = .none;
        
        return cell
    }
    
    // MARK: - UITableView Delegate
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        let cell = tableView.cellForRow(at: indexPath)
        
        UIView.animate(withDuration: 0.15, animations: {
            cell?.transform = CGAffineTransform(scaleX: 0.98, y: 0.98)
        }) { (_) in
            UIView.animate(withDuration: 0.15) {
                cell?.transform = CGAffineTransform.identity
            }
            
        }
        
        return indexPath
    }
    
}

