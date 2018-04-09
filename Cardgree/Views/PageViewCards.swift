//
//  ViewPageCards.swift
//  Cardgree
//
//  Created by Thiago Centurion on 08/04/2018.
//  Copyright © 2018 Thiago Centurion. All rights reserved.
//

import UIKit

class PageViewCards: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pageControl: UIPageControl!
    
    // MARK: - View Controller
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
        self.dataSource = self
        
        // Cria a primeira view controller
        if let viewCardFirst = self.getViewCardControllerAtIndex(0) {
            self.setViewControllers([viewCardFirst], direction: .forward, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Métodos
    
    func getViewCardControllerAtIndex(_ index:Int) -> ViewCard? {
        if index == NSNotFound || index < 0 || index > 1 { return nil }
        guard let viewCard = storyboard?.instantiateViewController(withIdentifier: "ViewCard") as? ViewCard else { return nil }
        
        // TODO: Setup dos dados da model na view controller
        
        viewCard.index = index
        
        return viewCard
    }
    
    // MARK: - DataSource
    
    // Before
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        // Obtem a view controller 'before' e discrementa -1 em seu index
        let viewCard = viewController as! ViewCard
        var index = viewCard.index
        index -= 1
        
        return self.getViewCardControllerAtIndex(index)
    }
    
    // After
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        // Obtem a view controller 'after' e incrementa +1 em seu index
        let viewCard = viewController as! ViewCard
        var index = viewCard.index
        index += 1
        
        return self.getViewCardControllerAtIndex(index)
    }
    
    // MARK: - Delegate
}
