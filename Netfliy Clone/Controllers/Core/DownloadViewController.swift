//
//  DownloadViewController.swift
//  Netfliy Clone
//
//  Created by Shishir_Mac on 19/2/23.
//

import UIKit

class DownloadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Download"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
    }
    
}
