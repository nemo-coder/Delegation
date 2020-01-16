//
//  HomeVC.swift
//  DelegationPractice
//
//  Copyright © 2020 xyz. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, EditNameDelegation {
    
    weak var delegat: EditNameDelegation?

    @IBOutlet weak var nameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let profileNavigationController = tabBarController?.viewControllers?.compactMap({ $0 as? UINavigationController }).first
        (profileNavigationController?.topViewController as? ProfileVC)?.delegat = self
    }
    

    func resetName() {
        nameLbl.text = "Hello Nemo, We are done!"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
}
