//
//  meViewController.swift
//  TabBarwithXib
//
//  Created by MAC on 24/02/23.
//

import UIKit

class meViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showTabBar()
        
       
        self.hidesBottomBarWhenPushed = true

    }
    
    
    
    func showTabBar() {

            let tabBarView = Bundle.main.loadNibNamed("TabBarView", owner: nil, options: nil)?.first as? TabBarView
          tabBarView?.frame = CGRect(x:0, y:screenHeight - 105, width:screenWidth - 40, height:80)
        tabBarView?.center.x = self.view.center.x
            tabBarView?.selectedMenu(menu: .me)
            if let tabBarView = tabBarView {
            self.view.addSubview(tabBarView)
                }
        }
//    @IBAction func onTapOfNextColorButton2(_ sender: Any) {
//    NavigationManager.shared.getNextStepInOnboarding(currentStep: NextViewController.me)
//    }

    
}
