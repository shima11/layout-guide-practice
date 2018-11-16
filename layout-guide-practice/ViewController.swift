//
//  ViewController.swift
//  layout-guide-practice
//
//  Created by Jinsei Shima on 2018/11/16.
//  Copyright © 2018 Jinsei Shima. All rights reserved.
//

import UIKit
import EasyPeasy

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red

        let _view = UIView()
        _view.backgroundColor = .white
        view.addSubview(_view)

        if #available(iOS 11.0, *) {
            _view.easy.layout(
                Top().to(view.safeAreaLayoutGuide, .top),
                Right().to(view.safeAreaLayoutGuide, .right),
                Left().to(view.safeAreaLayoutGuide, .left),
                Bottom().to(view.safeAreaLayoutGuide, .bottom)
            )
        } else {
            _view.easy.layout(
                Top().to(topLayoutGuide, .bottom),
                Right(),
                Left(),
                Bottom().to(bottomLayoutGuide, .top)
            )
        }
        
    }


}

