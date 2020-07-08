//
//  ViewController.swift
//  Xode_Previews_UIkit
//
//  Created by koji torishima on 2020/07/08.
//

import UIKit

class ViewController: UIViewController {
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
}

#if DEBUG
import SwiftUI

struct VCPreview: PreviewProvider {
    static var previews: some View {
        ViewController()
            .toPreview()
            .previewDevice("iPhone 11 Pro Max")
    }
}

#endif
