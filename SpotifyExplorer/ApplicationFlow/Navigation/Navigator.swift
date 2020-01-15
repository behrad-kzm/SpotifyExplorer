//
//  Navigator.swift
//  OKala
//
//  Created by Behrad Kazemi on 12/6/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import UIKit
import Hero
class Navigator {
    internal let navigationController: UINavigationController
    internal let services: ServicePackage
    
    init(services: ServicePackage, navigationController: UINavigationController) {
        self.services = services
        self.navigationController = navigationController
    }
    
    func prepareFor(error: Error){
        DispatchQueue.main.async { [services, navigationController, error] in
            let errorVC = PopUpCoverViewController(nibName: "PopUpCoverViewController", bundle: nil)
            errorVC.viewModel = error.asPopUpCoverViewModel(appearance: services.appearance)
            errorVC.modalPresentationStyle = .overCurrentContext
            errorVC.loadView()
            errorVC.isHeroEnabled = true
            errorVC.mainView.hero.modifiers = [.fade, .translate(y: 100)]
            if let upperVC = navigationController.viewControllers.last {
                if let presented = upperVC.presentedViewController{
                    presented.present(errorVC, animated: true, completion: nil)
                    return
                }
                upperVC.present(errorVC, animated: true, completion: nil)
            }
        }
    }
}
