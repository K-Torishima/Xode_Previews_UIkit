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
    }
}

#if DEBUG
import SwiftUI

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}

struct ViewControllerPreview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
            .previewDevice("iPhone 11 Pro Max")
        
    }
}
#endif
