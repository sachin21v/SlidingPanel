/*
 Copyright (c) 2016 Sachin Verma
 
 SVMenuOptionManager.swift
 SVSlidingPanel
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
import UIKit

enum SVMenuOptions {
    case Audi
    case BMW
    case Honda
    case Tata
    case Toyota
    case Suzuki
    case Nissan
    case Volkswagen
    case Volvo
    case Jaguar
    case Fiat
    case Ford
    
    var menuTitle: String {
        
        return String(describing: self)
    }
    
}


class SVMenuOptionManager: NSObject {
    
    static let sharedInstance = SVMenuOptionManager()
    
    let slidingPanel: SVSlidingPanelViewController
    
    
    override init() {
        
        self.slidingPanel = SVSlidingPanelViewController()
        
        super.init()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let  lefthamburgerMenuController : SVMenuViewController = storyboard.instantiateViewController(withIdentifier: "SVMenuViewController") as! SVMenuViewController
        
        let  righthamburgerMenuController : SVMenuViewController = storyboard.instantiateViewController(withIdentifier: "SVMenuViewController") as! SVMenuViewController
        
        
        let  detailController : SVDetailViewController = storyboard.instantiateViewController(withIdentifier: "SVDetailViewController") as! SVDetailViewController
        let navigation = UINavigationController(rootViewController:detailController)
        
        self.slidingPanel.leftPanel = lefthamburgerMenuController
        self.slidingPanel.centerPanel = navigation
//        self.slidingPanel.rightPanel = righthamburgerMenuController
        
        
        lefthamburgerMenuController.menuSelectionClosure = {[weak self](selectedMenuOption: SVMenuOptions, animated:Bool) in
            
            self?.showScreenForMenuOption(menuOntion: selectedMenuOption, animation: animated)
        }
        
        righthamburgerMenuController.menuSelectionClosure = {[weak self](selectedMenuOption: SVMenuOptions, animated:Bool) in
            
            self?.showScreenForMenuOption(menuOntion: selectedMenuOption, animation: animated)
        }

        
    }
    
    func showScreenForMenuOption(menuOntion: SVMenuOptions, animation animated: Bool) {
        
        
        let navigationController = self.slidingPanel.centerPanel as! UINavigationController
        let detailController = navigationController.viewControllers.first as! SVDetailViewController
        detailController.logoImageView.image = UIImage(named: menuOntion.menuTitle)
        
        self.slidingPanel.showCenterPanel(animated: animated)
        
    }
}
