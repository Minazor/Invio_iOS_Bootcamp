//
//  ViewController.swift
//  Odev3
//
//  Created by Mina İnal on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "JourneyList"
    
    
    let appearance = UINavigationBarAppearance()
    appearance.backgroundColor = UIColor(named: "mainColor")
    appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "textColor_1")!,.font: UIFont(name: "Caveat-Regular", size: 26)!]
    navigationController?.navigationBar.barStyle = .black
    navigationController?.navigationBar.standardAppearance = appearance
    navigationController?.navigationBar.compactAppearance = appearance
    navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

}

