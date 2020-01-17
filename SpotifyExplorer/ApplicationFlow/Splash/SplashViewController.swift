//
//  SplashViewController.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 11/25/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import UIKit
import Stellar
class SplashViewController: UIViewController {
    var viewModel: SplashViewModel!
    
    @IBOutlet weak var launchImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(viewModel != nil)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animation {
            self.viewModel.popLoginIfNeededOrContinue {}
        }
    }
    
    private func animation(completion: @escaping () -> ()){
        let startingScale = 1 - viewModel.scalePop
        let endingScale = 1 / startingScale
        
        launchImage.delay(1).scaleXY(startingScale, startingScale).duration(0.3).easing(.easeInEaseOut).completion { [launchImage] in
            AppSoundEffects().playPopSound()
            Vibrator.vibrate(hardness: 5)
            launchImage?.image = #imageLiteral(resourceName: "LogoWithShadow")
        }.then().scaleXY(endingScale, endingScale).snap(0.1).duration(0.05).completion {
            completion()
        }.animate()
    }
}
