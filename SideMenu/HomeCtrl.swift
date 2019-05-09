//
//  HomeCtrl.swift
//  SideMenu
//
//  Created by Milan Djordjevic on 5/9/19.
//  Copyright © 2019 miff.me. All rights reserved.
//

import UIKit

class HomeCtrl: BaseCtrl {
    
    lazy var btn: UIButton = {
        let b = UIButton(frame: CGRect(x: 10, y: 100, width: 200, height: 44))
        b.setTitle("NEXT", for: .normal)
        b.addTarget(self, action: #selector(handleBtn), for: .touchUpInside)
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "HOME"
    }
    
    override func setupViews() {
        super.setupViews()
        view.addSubview(btn)
    }
    
    @objc
    func handleBtn() {
        let vc = OneCtrl()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
