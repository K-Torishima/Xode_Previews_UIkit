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
        view.backgroundColor = .brown
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.addTarget(self, action: #selector(buttonEvent(_:)), for: UIControl.Event.touchUpInside)
        button.setTitle("ボタンのテキスト", for: UIControl.State.normal)
        button.sizeToFit()
        button.center = self.view.center
        self.view.addSubview(button)

    }
    
    @objc func buttonEvent(_ sender: UIButton) {
        print("ボタンの情報: \(sender)")
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
