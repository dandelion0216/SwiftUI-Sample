//
//  HostingViewController.swift
//  Blog-sample-xib
//
//  Created by Nobuharu Kusama on 2023/03/19.
//

import UIKit
import SwiftUI

class HostingViewController<T: View>: UIViewController {
    
    let rootView: T
    
    init(rootView: T) {
        self.rootView = rootView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hosting = UIHostingController(rootView: rootView)
        addChild(hosting)
        hosting.didMove(toParent: self)
        view.addSubview(hosting.view)
        hosting.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hosting.view.topAnchor.constraint(equalTo: view.topAnchor),
            hosting.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hosting.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hosting.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        hosting.view.updateConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.updateConstraints()
    }
}
