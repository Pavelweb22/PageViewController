//
//  ViewController.swift
//  PageViewController
//
//  Created by Павел Яковенко on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startPresentation()
    }
    
    func startPresentation() {
    if let pageViewController = storyboard?.instantiateViewController(
        withIdentifier: "PageViewController") as? PageViewController{
            present(pageViewController, animated: true, completion: nil)
        }
    }
}

