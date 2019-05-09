//
//  SideMenuCtrl.swift
//  SideMenu
//
//  Created by Milan Djordjevic on 5/9/19.
//  Copyright © 2019 miff.me. All rights reserved.
//

import UIKit

class SideMenuCtrl: UIViewController {
    
    lazy var overlay: UIView = {
        let v = UIView(frame: view.frame)
        v.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        let close = UITapGestureRecognizer(target: self, action: #selector(closeMe))
        v.addGestureRecognizer(close)
        return v
    }()
    
    lazy var menu: UIView = {
        let v = UIView(frame: CGRect(x: view.frame.width - 200, y: 0, width: 200, height: view.frame.height))
        v.backgroundColor = .white
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear
        view.clipsToBounds = true
        view.clearsContextBeforeDrawing = true
        
        view.addSubview(overlay)
        view.addSubview(menu)
        
        // MARK: Put rest of the logic hire
        
    }
    
    
    @objc
    func closeMe() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
