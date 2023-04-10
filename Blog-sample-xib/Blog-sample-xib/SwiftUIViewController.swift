//
//  SwiftUIViewController.swift
//  Blog-sample-xib
//
//  Created by Nobuharu Kusama on 2023/03/19.
//

import UIKit
import SwiftUI

class SwiftUIViewController: HostingViewController<SampleSwiftUI> {
    
    init() {
        super.init(rootView: SampleSwiftUI())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
