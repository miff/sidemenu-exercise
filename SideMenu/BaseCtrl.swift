//
//  BaseCtrl.swift
//  SideMenu
//
//  Created by Milan Djordjevic on 5/9/19.
//  Copyright © 2019 miff.me. All rights reserved.
//

import UIKit

class BaseCtrl: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        // MARK: Set side menu button
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .pause, target: self, action: #selector(showSideMenu))
    }
    
    @objc
    func showSideMenu() {
        let vc = SideMenuCtrl()
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.async {
            self.setupViews()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("!!! Memory Warning !!!")
    }
    
    func setupViews() {}
    
    
}
