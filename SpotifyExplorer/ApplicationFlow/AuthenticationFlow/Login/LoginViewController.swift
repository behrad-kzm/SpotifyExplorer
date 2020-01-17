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
class LoginViewController: UIViewController {
    var viewModel: LoginViewModel!
    
    //MARK:- Outlets
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var textFieldContainer: UIView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var spotifyExplorerImageView: UIImageView!
    @IBOutlet weak var otpIconImageView: UIImageView!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonContainer: UIView!
    @IBOutlet weak var sendLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var validationCheckLabel: UILabel!
    @IBOutlet weak var sendStack: UIStackView!
    @IBOutlet weak var changeLanguageButton: UIButton!
    @IBOutlet weak var changeButtonContainer: UIView!
    
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
        sendLabel.isHidden = true
        sendLabel.textColor = viewModel.appearance.getColors().buttonTextColor
        textFieldContainer.alpha = 0
        buttonContainer.alpha = 0
        indicator.hidesWhenStopped = true
        validationCheckLabel.alpha = 0
        buttonContainer.clipsToBounds = true
        textFieldContainer.clipsToBounds = true
        buttonContainer.backgroundColor = viewModel.appearance.getColors().primaryColor
        let textFieldFont = viewModel.appearance.getFonts().textField.uiFont()
        textField.font = textFieldFont
        sendLabel.font = viewModel.appearance.getFonts().buttonTitle.uiFont()
        sendLabel.text = NSLocalizedString("SendCode", comment: "")
        validationCheckLabel.font = viewModel.appearance.getFonts().warningText.uiFont()
        validationCheckLabel.text = NSLocalizedString("WrongPhoneNumber", comment: "")
    }
    private func setupSizes(){
        buttonContainer.layer.cornerRadius = buttonContainer.bounds.height / 2
    }
    private func loadAnimations(){
        spotifyExplorerImageView.moveY(-20).duration(0).then().delay(0.3).moveY(20).makeAlpha(1).duration(0.5).animate()
        textFieldContainer.delay(0.8).makeAlpha(1).duration(1).animate()
        showButtonAnimation()
    }
    private func showButtonAnimation(){
        let startingScale: CGFloat = 0.9
        let endingScale = 1 / startingScale
        buttonContainer.makeAlpha(1).duration(0).then().scaleXY(startingScale, startingScale).then().scaleXY(endingScale, endingScale).snap(0.3).duration(0.1).completion {
            self.textField.becomeFirstResponder()
        }.animate()
    }
    
    private func bindData(){
       
    }
}
