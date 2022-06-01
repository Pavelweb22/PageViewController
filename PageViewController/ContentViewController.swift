//
//  ContentViewController.swift
//  PageViewController
//
//  Created by Павел Яковенко on 01.06.2022.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var emodjiLabel: UILabel!
    @IBOutlet weak var pageControlLabel: UIPageControl!
    
    var presentText = ""
    var emodji = ""
    var curentPage = 0
    var numberOfPage = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentLabel.text = presentText
        emodjiLabel.text = emodji
        pageControlLabel.numberOfPages = numberOfPage
        pageControlLabel.currentPage = curentPage
    }
    


}
