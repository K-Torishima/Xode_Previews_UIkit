//
//  ViewController.swift
//  Xode_Previews_UIkit
//
//  Created by koji torishima on 2020/07/08.
//

import UIKit

class ViewController: UIViewController {
    
    var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("ボタンのテキスト", for: UIControl.State.normal)
        button.tintColor = .black
        button.sizeToFit()
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        button.center = self.view.center
        button.addTarget(self, action: #selector(buttonEvent(_:)), for: UIControl.Event.touchUpInside)
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
