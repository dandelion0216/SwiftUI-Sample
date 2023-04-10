//
//  SwiftUIViewController.swift
//  Blog-sample-storyboard
//
//  Created by Nobuharu Kusama on 2023/03/19.
//

import UIKit
import SwiftUI

class SwiftUIViewController: HostingViewController<SampleSwiftUI> {
    
    override var rootView: SampleSwiftUI? {
        SampleSwiftUI()
    }
}
