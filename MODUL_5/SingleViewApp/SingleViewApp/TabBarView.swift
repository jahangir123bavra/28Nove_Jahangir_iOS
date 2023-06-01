//
//  TabBarView.swift
//  SingleViewApp
//
//  Created by mr.jb on 05/04/23.
//

import UIKit

public enum MenuType{
    
    case home
    case search
    case me
    case settings
    
}

class TabBarView: UIView {
    
    @IBOutlet var homeButton: UIButton!
    @IBOutlet var homeLabel: UILabel!
    @IBOutlet var homeImageView: UIImageView!
    @IBOutlet var homeBarView: UIView!
    
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var searchLabel: UILabel!
    @IBOutlet var searchBarView: UIView!
    @IBOutlet var searchImageView: UIImageView!
    
    @IBOutlet var meButton: UIButton!
    @IBOutlet var meLabel: UILabel!
    @IBOutlet var meImageView: UIImageView!
    @IBOutlet var meTabBarView: UIView!
    
    
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var settingLabel: UILabel!
    @IBOutlet var settingImageView: UIImageView!
    @IBOutlet var settingTabBarView: UIView!
    
    let unSelectedMenuFont = "System"
    let unSelectedMenuFontSize = 12.0
    
    let selectedMenuFont = "System Bold"
    let selectedMenuFontSize = 12.0
    
    var lastSelectedMenu = MenuType: .home
    
    var onCompletedMenu:((MenuType)-> Void)?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        homeBarView.layer.cornerRadius = 1.5
        searchBarView.layer.cornerRadius = 1.5
        meTabBarView.layer.cornerRadius = 1.5
        settingTabBarView.layer.cornerRadius = 1.5
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 34.0
        self.clipsToBounds = true
        self.blurBackground(style: .dark , fallbackColor : UIColor(white: 0, alpha: 0.4))
    }
    
    func selectedmenu(menu : MenuType){
        
        lastSelectedMenu = menu
        
        homeLabel.font = UIFont(name: unSelectedMenuFont, size: unSelectedMenuFontSize)
        homeImageView.image = UIImage(named: "home")
        homeBarView.backgroundColor = .clear
        
        searchLabel.font = UIFont(name: unSelectedMenuFont, size: unSelectedMenuFontSize)
        searchImageView.image = UIImage(named: "search")
        searchBarView.backgroundColor = .clear
        
        meLabel.font = UIFont(name: unSelectedMenuFont, size: unSelectedMenuFontSize)
        meImageView.image = UIImage(named: "me")
        meTabBarView.backgroundColor = .clear
        
        settingLabel.font = UIFont(name: unSelectedMenuFont, size: unSelectedMenuFontSize)
        settingImageView.image = UIImage(named: "setting")
        settingTabBarView.backgroundColor = .clear
        
        if menu == .home{
            homeLabel.font = UIFont(name: selectedMenuFont, size: selectedMenuFontSize)
            homeImageView.image = UIImage(named: "home-fill")
            homeBarView.backgroundColor = .white
        }
        else if menu == .search{
            searchLabel.font = UIFont(name: selectedMenuFont, size: selectedMenuFontSize)
            searchImageView.image = UIImage(named: "search-fill")
            searchBarView.backgroundColor = .white
        }
        else if menu == .me{
            meLabel.font = UIFont(name: selectedMenuFont, size: selectedMenuFontSize)
            meImageView.image = UIImage(named: "me-fill")
            meTabBarView.backgroundColor = .white
            
        }
        else if menu == .settings{
            settingLabel.font = UIFont(name: selectedMenuFont, size: selectedMenuFontSize)
            settingImageView.image = UIImage(named: "setting-fill")
            settingTabBarView.backgroundColor = .white
        }
    }
    
    @IBAction func userHandleAction(_ sender: UIButton){
        if sender == homeButton{
            if lastSelectedMenu != .home {
                NavigationManager.shred.showHome(storyboardName : "Tabs")
            }
            
        }else if sender == searchButton{
            if lastSelectedMenu != .search{
                NavigationManager.shred.showSearch(storyboardName : "Tabs")
            }
            
        }else if sender == meButton{
            if lastSelectedMenu != .me{
                NavigationManager.shred.showProfile(storyboardName : "Tabs")
            }
            
        }else if sender == settingButton{
            selectedmenu(menu: .settings)
            
        }
    }
}
