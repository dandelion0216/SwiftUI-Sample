//
//  ViewController.swift
//  Blog-sample-xib
//
//  Created by Nobuharu Kusama on 2023/03/19.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    init() {
        super.init(nibName: String(describing: ViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func action(_ sender: Any) {
        let vc = UINavigationController(rootViewController: SwiftUIViewController())
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}
