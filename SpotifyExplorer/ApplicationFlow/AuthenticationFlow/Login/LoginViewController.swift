//
//  LoginViewController.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 11/25/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import UIKit
import Stellar
import RxSwift
import RxCocoa
import Lottie
import SpotifyLogin
class LoginViewController: UIViewController {
    var viewModel: LoginViewModel!
    
    //MARK:- Outlets
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var spotifyExplorerImageView: UIImageView!
    @IBOutlet weak var buttonContainer: UIView!
    @IBOutlet weak var sendLabel: UILabel!
    @IBOutlet weak var sendStack: UIStackView!
    @IBOutlet weak var changeLanguageButton: UIButton!
    @IBOutlet weak var changeButtonContainer: UIView!
    @IBOutlet weak var splashView: UIView!
    @IBOutlet weak var lottieAnimationContainer: UIView!
    var loginButton: UIButton!
    private var animation: AnimationView!
    let animationSpeed = 1.0
    let disposeBag = DisposeBag()
    //MARK:- LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupSizes()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loadAnimations()
    }
    private func setupUI(){
        splashView.alpha = 0
        sendLabel.isHidden = true
        sendLabel.textColor = viewModel.appearance.getColors().buttonTextColor
        buttonContainer.alpha = 0
        indicator.hidesWhenStopped = true
        buttonContainer.clipsToBounds = true
        buttonContainer.backgroundColor = viewModel.appearance.getColors().primaryColor
        sendLabel.font = viewModel.appearance.getFonts().buttonTitle.uiFont()
        sendLabel.text = NSLocalizedString("Login", comment: "")
        
        loginButton = SpotifyLoginButton(viewController: self, scopes: viewModel.getLoginScops())
    }
    private func setupSizes(){
        loginButton.layoutIfNeeded()
        buttonContainer.layer.cornerRadius = buttonContainer.bounds.height / 2
    }
    @IBAction func loginButtonClicked(_ sender: Any) {
        loginButton.sendActions(for: .touchUpInside)
    }
    func animateVerified(){
        animation = AnimationView()
        lottieAnimationContainer.removeSubviews()
        lottieAnimationContainer.isHidden = false
        self.splashView.makeAlpha(1).duration(0.3 * self.animationSpeed).completion {
            self.animation = AnimationView(name: "Verified")
            self.lottieAnimationContainer.contentMode = .scaleAspectFit
            self.lottieAnimationContainer.addSubview(self.animation)
            self.animation.frame = self.lottieAnimationContainer.bounds
            self.animation.loopMode = .playOnce
            self.animation.play(fromProgress: AnimationProgressTime(exactly: 0.0), toProgress: AnimationProgressTime(0.83), loopMode: .playOnce) { (finished) in
                AppSoundEffects().playVerifySound()
                Vibrator.vibrate(hardness: 2)
                self.animation.play(fromProgress: AnimationProgressTime(exactly: 0.83), toProgress: AnimationProgressTime(1.0), loopMode: .playOnce) { (finished) in
                    if finished{
                        self.viewModel.verified()
                    }
                }
            }
        }.animate()
        
        
    }
    
    private func loadAnimations(){
        spotifyExplorerImageView.moveY(-20).duration(0).then().delay(0.3).moveY(20).makeAlpha(1).duration(0.5).animate()
        showButtonAnimation()
    }
    private func showButtonAnimation(){
        let startingScale: CGFloat = 0.9
        let endingScale = 1 / startingScale
        buttonContainer.makeAlpha(1).duration(0).then().scaleXY(startingScale, startingScale).then().scaleXY(endingScale, endingScale).snap(0.3).duration(0.1).completion {
            UIView.animate(withDuration: 0.5,
                           delay: 0.0,
                           usingSpringWithDamping: 0.9,
                           initialSpringVelocity: 1,
                           options: [],
                           animations: { [weak self] in
                            self?.sendLabel?.isHidden = false
                            self?.sendLabel?.alpha =  1
                },
                           completion: nil)
        }.animate()
    }
    
    private func bindData(){
        let input = LoginViewModel.Input(loginTrigger: loginButton.rx.tap.asDriver())
        let output = viewModel.transform(input: input)
        let disposables = [
            output.action.do(onNext: { () in
                DispatchQueue.main.async {
                    self.animateVerified()
                }
            }).drive(),
            output.isFetching.do(onNext: { [ loginButton, indicator, sendLabel](fetching) in
                DispatchQueue.main.async {
                    if loginButton?.isUserInteractionEnabled ?? false {
                        UIView.animate(withDuration: 0.5,
                                       delay: 0.0,
                                       usingSpringWithDamping: 0.9,
                                       initialSpringVelocity: 1,
                                       options: [],
                                       animations: {
                                        sendLabel?.isHidden = fetching
                                        sendLabel?.alpha = fetching ? 0 : 1
                        },
                                       completion: nil)
                    }
                    if fetching {
                        indicator?.startAnimating()
                        return
                    }
                    indicator?.stopAnimating()
                }
            }).drive()]
        disposables.forEach { (item) in
            item.disposed(by: disposeBag)
        }
    }
}
