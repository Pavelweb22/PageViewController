//
//  PageViewController.swift
//  PageViewController
//
//  Created by Павел Яковенко on 01.06.2022.
//

import UIKit

class PageViewController: UIPageViewController {

    
    let presentScreenContent = ["Первая страница презентации",
                                "Вторая страница презентации",
                                "Третья страница презентации",
                                "Четвертая страница презентации",
                                ""]
    
    let emodjiArray = ["🖐", "✌️", "👌", "👍", "" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contentViewController = showViewControllerAtIndex(0){
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
        dataSource = self
    }
    
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        guard index >= 0 else {return nil}
        guard index < presentScreenContent.count else {
            dismiss(animated: true, completion: nil)
            return nil}
        let contentViewController = storyboard?.instantiateViewController(
            withIdentifier: "ContentViewController") as? ContentViewController
        contentViewController?.presentText = presentScreenContent[index]
        contentViewController?.emodji = emodjiArray[index]
        contentViewController?.curentPage = index
        contentViewController?.numberOfPage = presentScreenContent.count
        
        return contentViewController
        
    }
}

extension PageViewController: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).curentPage
        pageNumber -= 1
        return showViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).curentPage
        pageNumber += 1
        return showViewControllerAtIndex(pageNumber)
    }
    
    
}
