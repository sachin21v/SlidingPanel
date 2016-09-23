# SlidingPanel
SVSlidingPanel is a UIViewController container designed for presenting a center panel with revealable side panels - one to the left and one to the right.
It supports iOS 8 or later and using Swift 3.0.


How to use:

1. Make a object of SVSlidingPanelViewController

    let slidingPanel = SVSlidingPanelViewController()
    

2.  Assign the controller which you want to show in center panel
    
    let  detailController  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SVDetailViewController") as! SVDetailViewController
    
    let navigation = UINavigationController(rootViewController:detailController)
    slidingPanel.centerPanel = navigation
    

3. Assign the controller which you want to show in left panel
  
    let  lefthamburgerMenuController  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SVMenuViewController") as! SVMenuViewController

    slidingPanel.leftPanel = lefthamburgerMenuController


4. Assign the controller which you want to show in right panel same as above.


5. You can configure left panel and right panel visible width(%) should be between 0 and 1.
    
     slidingPanel.leftPanelVisibleWidth = 0.6
     slidingPanel.rightPanelVisibleWidth = 0.2
 


6. You can enable/disable pan gesture on center panel to close/open panel(Default:Pan Gesture Enabled).
    
    slidingPanel.shouldPanEnabledSliding = false


7. You can enable/disable tap event on center panel to close center panel(Default:Tap Gesture Enabled).
    
    slidingPanel.shouldTapEnabledSliding = false


8. you can enable/disable animation on side panel(Default: false).

    slidingPanel.shouldAnimateSidePanel = true

